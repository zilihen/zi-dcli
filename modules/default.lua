

local packages = {

    -- System leve stuff needed
    "base",
    "base-devel",              
    "timeshift", 
    
    -- Theme
    "adwaita-icon-theme", 

    -- Basic Package
    "fzf",
    "discord", 
    "btop", 
    "libreoffice-fresh", 
    "wget", 
    "zip", 
    "unzip",
    "foot", 
    "starship",
    "git",
    "fish",
    "gvfs", 

    -- gaming
    "steam",
    "protonplus", 
    "prismlauncher", 
}

local services = {
    enabled = { 
        "NetworkManager", 
        "bluetooth", 
        "cups",
    },
    disabled = {},
}


-- Add CPU microcode based on vendor
local cpu = dcli.hardware.cpu_vendor()
if cpu == "intel" then
    dcli.log.info("Intel CPU detected - adding intel-ucode")
    table.insert(packages, "intel-ucode")
elseif cpu == "amd" then
    dcli.log.info("AMD CPU detected - adding amd-ucode")
    table.insert(packages, "amd-ucode")
end

return {
    description = "Default System Settings",
    packages = packages,
    services = services,

    -- Settings
    flatpak_scope = "user",
    auto_prune = false,
    module_processing = "parallel",

    default_apps = {
        terminal = "foot",
    },

    system_backups = {
        enabled = true,
        backup_on_sync = true,
        backup_on_update = true,
        tool = "timeshift",
        snapper_config = "root",
        max_backups = 5,
    },
}
