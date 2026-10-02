local is_laptop = dcli.hardware.is_laptop()
local memory_mb = dcli.system.memory_total_mb()

dcli.log.info(string.format("Loading config for cachy-station (%d MB RAM)", memory_mb))

local enabled_modules = {
  "default",
  "hardware",
  "config",
  "vm/docker",
  "vm/winapps",
}

local services = {
  enabled = {
    "NetworkManager",
    "bluetooth",
    "cups",
  },
  disabled = {},
}

if dcli.util.contains(enabled_modules, "vm/docker") then
  table.insert(services.enabled, "docker")
end

-- Active host
return {
  host = dcli.system.hostname(),
  services = services,
  enabled_modules = enabled_modules,
  package_manager = "pacman",

  -- Settings
  flatpak_scope = "user",
  auto_prune = false,
  module_processing = "parallel",

  editor = "helix",

  system_backups = {
    enabled = true,
    backup_on_sync = true,
    backup_on_update = true,
    tool = "timeshift",
    snapper_config = "root",
    max_backups = 5,
  },
}
