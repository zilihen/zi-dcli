

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
    enabled = {},
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
}
