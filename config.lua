local is_laptop = dcli.hardware.is_laptop()
local memory_mb = dcli.system.memory_total_mb()

dcli.log.info(string.format("Loading config for cachy-station (%d MB RAM)", memory_mb))

local enabled_modules = {
    "default",
    "hardware",
    "config",
    "vm/docker",
}

local services = {
    enabled = {},
    disabled = {},
}

-- Active host
return {
    host = dcli.system.hostname(),
    services = services,
    enabled_modules = enabled_modules,
    package_manager = "pacman",
}
