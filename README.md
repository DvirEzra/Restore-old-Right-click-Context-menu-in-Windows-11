# Restore Old Right-Click Context Menu in Windows 11

Starting with Windows 11, the context menu in the File Explorer has been refreshed to a more compact and modern design. However, this new context menu displays fewer items compared to the legacy context menu. This guide discusses how to restore the legacy context menu in Windows 11, allowing it to show up by default.

![image](https://github.com/user-attachments/assets/5f370f86-6b66-4a58-ad56-317f3f5e5a50)

You can still access the legacy right-click context menu by clicking "Show more options" at the end of the list or by pressing **Shift + F10**. If you want the legacy menu to appear by default, you'll need to add a specific registry entry, as detailed below.

![image](https://github.com/user-attachments/assets/08888924-3042-4f60-a03b-2230871f537f)

## Steps to Restore the Old Context Menu

### Option 1: Manual Method

1. **Right-click the Start button** and choose **Windows Terminal** (or **Windows PowerShell**).
   
2. **Copy the command below**, paste it into the Windows Terminal window, and press **Enter**:

   ```bash
   reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
   ```

3. **Restart File Explorer** or your computer for the changes to take effect.

4. You should now see the legacy right-click context menu by default.

![image](https://github.com/user-attachments/assets/f3fa8d5d-0938-49fe-84c6-492457ef2890)

### Option 2: Using the Script

For a quicker and easier method, you can use the provided script to restore the legacy context menu automatically. 

1. **Download the script** from the repository.
   
2. **Run the script as an administrator** by right-clicking it and selecting "Run as administrator."

3. The script will automatically add the necessary registry entry and prompt you to restart File Explorer.

## Restoring Modern Context Menus

To undo this change, open a Terminal window and execute the following command:

```bash
reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
```

**Restart File Explorer** or your computer for the changes to take effect.

These steps will help you enable the old context menu in Windows 11. If you encounter any issues, ensure that you have the necessary administrative permissions to make changes to the registry.
