# Prompt the user to enter the path to the fstab file
$fstabPath = Read-Host "Enter the full path to your fstab file"

# Check if the file exists
if (Test-Path $fstabPath) {
    # Prompt the user to choose encryption or decryption
    $choice = Read-Host "Do you want to encrypt or decrypt the data? (Enter 'encrypt' or 'decrypt')"

    # Read the contents of the file
    $content = Get-Content $fstabPath
    
    if ($choice -eq "encrypt") {
        if ($content -match 'notencryptable') {
            # Replace 'notencryptable' with 'fileencryption'
            $updatedContent = $content -replace 'notencryptable', 'fileencryption'
            Set-Content -Path $fstabPath -Value $updatedContent
            Write-Host "Data encrypted successfully."
        } else {
            Write-Host "No 'notencryptable' entries found. Skipping encryption."
        }
    } elseif ($choice -eq "decrypt") {
        if ($content -match 'fileencryption') {
            # Replace 'fileencryption' with 'notencryptable'
            $updatedContent = $content -replace 'fileencryption', 'notencryptable'
            Set-Content -Path $fstabPath -Value $updatedContent
            Write-Host "Data decrypted successfully."
        } else {
            Write-Host "No 'fileencryption' entries found. Skipping decryption."
        }
    } else {
        Write-Host "Invalid choice. Please enter 'encrypt' or 'decrypt'."
    }
} else {
    Write-Host "File not found at the specified path."
}

# Load the Windows Forms assembly
Add-Type -AssemblyName System.Windows.Forms

# Display a pop-up message indicating the script's author
[System.Windows.Forms.MessageBox]::Show("This script is written by @AshutoshCodeSpace", "Script Author")