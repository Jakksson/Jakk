-- Create a ScreenGui to hold the UI elements
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a main frame (container) for the UI
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 300) -- Adjust the size as needed
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150) -- Center the frame
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BackgroundTransparency = 0.2
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Create a UI corner for rounded edges
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = mainFrame

-- Create the close button (X in the corner)
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 40, 0, 40)
closeButton.Position = UDim2.new(1, -50, 0, 10) -- Position it in the top-right corner
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 24
closeButton.BorderSizePixel = 0
closeButton.Parent = mainFrame

-- Add functionality to close the UI when clicked
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy() -- This will remove the UI
end)

-- Optional: Add some text or elements to the UI to make it look cooler
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Your Cool UI"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 24
title.TextAlign = Enum.TextAlign.Center
title.Parent = mainFrame

-- Optional: Add some more content or buttons if needed
