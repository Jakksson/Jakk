local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
screenGui.Name = "CustomUI"

-- Create the main frame for the UI
local mainFrame = Instance.new("Frame")
mainFrame.Parent = screenGui
mainFrame.Size = UDim2.new(0, 400, 0, 300)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Dark Gray
mainFrame.BorderSizePixel = 0
mainFrame.Rounding = UDim.new(0, 10) -- rounded corners

-- Add some text inside the frame
local titleLabel = Instance.new("TextLabel")
titleLabel.Parent = mainFrame
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "Welcome to Roblox UI"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 24
titleLabel.BackgroundTransparency = 1
titleLabel.TextAlign = Enum.TextAlign.Center
titleLabel.TextXAlignment = Enum.TextXAlignment.Center
titleLabel.TextYAlignment = Enum.TextYAlignment.Center

-- Create the close button (X in the top-right corner)
local closeButton = Instance.new("TextButton")
closeButton.Parent = mainFrame
closeButton.Size = UDim2.new(0, 40, 0, 40)
closeButton.Position = UDim2.new(1, -50, 0, -10)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 24
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red color for close button
closeButton.BorderSizePixel = 0
closeButton.AutoButtonColor = false
closeButton.TextButtonStyle = Enum.ButtonStyle.Custom

-- Hover effect for the close button
closeButton.MouseEnter:Connect(function()
    closeButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
end)

closeButton.MouseLeave:Connect(function()
    closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end)

-- Close the UI when the close button is clicked
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
