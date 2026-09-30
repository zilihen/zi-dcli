return { 
    description = "Setting up docker", 

    packages = { 
        "docker",
    },

    services = { 
        enabled = { "docker" },
    },
}