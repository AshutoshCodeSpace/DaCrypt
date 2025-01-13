<p align="center">
  <img src="banner.png" alt="DaCrypt" />
</p>

### DaCrypt Guide for Using Internal Storage in Recovery

This guide explains how to use **DaCrypt** to manage **Internal Storage** in **Recovery** by modifying your phone's `vendor.img`. The tool will help you encrypt or decrypt the storage in the recovery environment. This process is applicable for any custom recovery, such as TWRP, Orange Fox, SHRP, PBRP, etc.

---

### Requirements:
- **DaCrypt.exe** (Download from [**Releases**](https://github.com/AshutoshCodeSpace/DaCrypt/releases))
- **Your device's `vendor.img`** (Usually located in the `vendor` partition)
- **Custom recovery** (TWRP, Orange Fox, SHRP, PBRP, etc.) installed on your device

---

### Steps:

1. **Obtain and Unpack Your `vendor.img`**
   - Obtain the `vendor.img` file from your device.
   - After extracting the image from your device’s firmware or backup, use a tool to **unpack** the `vendor.img`.

2. **Download DaCrypt Tool**
   - Download **DaCrypt.exe** from the provided link.
   - Place the executable in a folder on your computer where you can easily access it.

3. **Run DaCrypt.exe**
   - Double-click on **DaCrypt.exe** to launch the tool.
   - The tool will prompt you to enter the path to the `fstab` file. This file is located in the `etc` folder of your unpacked `vendor.img`.

4. **Get the `fstab` Path**
   - Navigate to your unpacked `vendor.img`.
   - Go to the `etc` folder within the unpacked image.
   - Locate the `fstab.<SoC>` file (the name will depend on your system on chip).
   - Copy the full path of this `fstab` file.

5. **Choose Encryption or Decryption**
   - After entering the path to the `fstab` file, DaCrypt will ask you to choose whether you want to **encrypt** or **decrypt** the storage.

   **Option 1: Decrypt**
   - If you choose **decrypt**, the tool will allow you to use **Internal Storage in Recovery**. This means you will have access to your device’s internal storage while in recovery mode (with any custom recovery like TWRP, Orange Fox, etc.).

   **Option 2: Encrypt**
   - If you choose **encrypt**, **Internal Storage in Recovery** will be disabled. This option will encrypt the storage, and you will not be able to access internal storage from recovery.

6. **Complete the Process**
   - After completing the encryption or decryption step, the tool will finish the process.

7. **Rebuild and Flash Your `vendor.img`**
   - After DaCrypt has finished its work, rebuild the `vendor.img` with the changes you made.
   - Flash the modified `vendor.img` back to your device using **fastboot** or any suitable flashing method.

8. **Format Data in Recovery**
   - Once the flash is complete, boot into your custom recovery and **format data** to ensure the changes take effect properly.

9. **Reboot the System**
   - Reboot your device into the system, and the changes will be active.
   - If you decrypted the `fstab`, you should now have access to **Internal Storage in Recovery**. If you encrypted it, Internal Storage will be unavailable in Recovery.

---

### Conclusion:
You have successfully used **DaCrypt** to either enable or disable access to **Internal Storage** in **Recovery** by modifying the `vendor.img`. Whether you chose to encrypt or decrypt, follow the steps to rebuild, flash, and format data for a smooth experience.

---

### Credits:
- [**@AshutoshCodeSpace**](https://github.com/AshutoshCodeSpace)
- [**@DelightOSChat**](https://t.me/DelightOSChat)
- [**@DelightOSUpdates**](https://t.me/DelightOSUpdates)
