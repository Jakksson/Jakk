-- Create a ScreenGui to hold the UI elements
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the Frame (the main box UI)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200) -- Size of the box
frame.Position = UDim2.new(0.5, -150, 0.5, -100) -- Position the box at the center of the screen
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- White background
frame.Parent = screenGui

-- Create the "X" button to close the UI
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 50, 0, 50) -- Size of the button
closeButton.Position = UDim2.new(1, -60, 0, 10) -- Position in the top-right corner of the box
closeButton.Text = "X" -- Text inside the button
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red background
closeButton.Parent = frame

-- Function to remove the UI when the "X" button is clicked
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy() -- This will remove the UI
end)
