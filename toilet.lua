-- Define a function to apply the selected rarity
local function applyRarity(selectedRarity)
    -- Dark magic goes here to apply the rarity...
end
 
-- Create a screen GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
 
-- Create a frame for the cheat interface
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 600, 0, 450) -- Increased height
frame.Position = UDim2.new(0.5, -300, 0.5, -225) -- Centered
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.new(1, 1, 1)
frame.Active = true
frame.Draggable = true
frame.Parent = ScreenGui
 
-- Create a title for the cheat
local title = Instance.new("TextLabel")
title.Text = "Auto Market Toilet Tower Defence"
title.Size = UDim2.new(1, 0, 0, 30) -- Increased font size
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
title.TextColor3 = Color3.new(1, 1, 1)
title.BorderSizePixel = 0
title.FontSize = Enum.FontSize.Size24 -- Increased font size
title.Parent = frame
 
-- Create a button to close the cheat
local closeButton = Instance.new("TextButton")
closeButton.Text = "X"
closeButton.Size = UDim2.new(0, 30, 0, 30) -- Increased font size
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.BorderSizePixel = 0
closeButton.FontSize = Enum.FontSize.Size24 -- Increased font size
closeButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
closeButton.Parent = title
 
-- Create a dropdown for selecting rarity
local rarityDropdown = Instance.new("TextButton")
rarityDropdown.Text = "Select Rarity"
rarityDropdown.Size = UDim2.new(0, 500, 0, 60)
rarityDropdown.Position = UDim2.new(0.5, -250, 0.5, -170) -- Adjusted position
rarityDropdown.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
rarityDropdown.TextColor3 = Color3.new(1, 1, 1)
rarityDropdown.BorderSizePixel = 2
rarityDropdown.BorderColor3 = Color3.new(1, 1, 1)
rarityDropdown.Parent = frame
 
-- Create dropdown options
local rarityMenu = Instance.new("Frame")
rarityMenu.Size = UDim2.new(0, 500, 0, 240)
rarityMenu.Position = UDim2.new(0.5, -250, 0.5, -100) -- Adjusted position
rarityMenu.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
rarityMenu.BorderSizePixel = 0
rarityMenu.Visible = false
rarityMenu.Parent = frame
 
local rarityColors = {
    Color3.fromRGB(255, 255, 255), -- Basic
    Color3.fromRGB(100, 255, 100), -- Uncommon
    Color3.fromRGB(100, 100, 255), -- Rare
    Color3.fromRGB(255, 100, 100) -- Epic
}
 
local rarityOptions = {"Basic 0 - 1000", "Uncommon 0 - 1000", "Rare 0 - 1000", "Epic 0 - 1000"}
for i, rarity in ipairs(rarityOptions) do
    local optionButton = Instance.new("TextButton")
    optionButton.Text = rarity
    optionButton.Size = UDim2.new(1, 0, 0, 60)
    optionButton.Position = UDim2.new(0, 0, 0, (i - 1) * 60)
    optionButton.BackgroundColor3 = rarityColors[i]
    optionButton.BorderSizePixel = 0
    optionButton.TextColor3 = Color3.new(0, 0, 0) -- Black color
    optionButton.FontSize = Enum.FontSize.Size24 -- Increased font size
    optionButton.MouseButton1Click:Connect(function()
        applyRarity(rarity)
        rarityDropdown.Text = rarity
        rarityMenu.Visible = false
    end)
    optionButton.Parent = rarityMenu
end
 
-- Create an "Apply" button
local applyButton = Instance.new("TextButton")
applyButton.Text = "Apply"
applyButton.Size = UDim2.new(0, 200, 0, 50)
applyButton.Position = UDim2.new(0.5, -100, 1, -60)
applyButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
applyButton.TextColor3 = Color3.new(1, 1, 1)
applyButton.BorderSizePixel = 2
applyButton.BorderColor3 = Color3.new(1, 1, 1)
applyButton.FontSize = Enum.FontSize.Size24 -- Increased font size
applyButton.Parent = frame
 
-- Dropdown toggle
rarityDropdown.MouseButton1Click:Connect(function()
    rarityMenu.Visible = not rarityMenu.Visible
end)
