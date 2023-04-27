import subprocess

def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press Ctrl+F8 to toggle the breakpoint.


if __name__ == '__main__':
    print_hi('Spustanie procesov')
    subprocess.Popen("C:\\Windows\\System32\\calc.exe")
    skicar = subprocess.Popen("C:\\Windows\\System32\\mspaint.exe")
    skicar.wait()
    subprocess.Popen("C:\\Windows\\notepad.exe")
    subprocess.Popen("C:\\Program Files\\Notepad++\\notepad++.exe")
    subprocess.Popen("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe")
    subprocess.run("dir")
