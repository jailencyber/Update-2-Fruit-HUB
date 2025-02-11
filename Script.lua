-- Attempt to load the Main.lua script from the specified URL
print("Fetching Main.lua script...")

-- Use pcall to handle potential errors when fetching the script
local success, result = pcall(function()
    return game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/jailencyber/Update-2-Fruit-HUB/refs/heads/main/Main.lua")
end)

if success then
    print("Main.lua script fetched successfully")
    
    -- Load the fetched script using loadstring and handle errors
    local loadSuccess, loadResult = pcall(function()
        return loadstring(result)()  -- Execute the loaded script
    end)

    if loadSuccess then
        print("Main.lua script loaded successfully")
    else
        warn("Error loading Main.lua script: " .. loadResult)
    end
else
    warn("Error fetching Main.lua script: " .. result)
end
