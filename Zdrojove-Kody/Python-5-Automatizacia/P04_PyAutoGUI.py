import pyautogui
import time
import PIL
from Tools.scripts.h2py import pytify

if __name__ == '__main__':
    print('pyautogui')

    screenWidth, screenHeight = pyautogui.size()
    print(f"{screenWidth} x {screenHeight}")

    currentMouseX, currentMouseY = pyautogui.position()
    print(f"x: {currentMouseX} y: {currentMouseY}")
    # pyautogui.moveTo(30, 30)
    # pyautogui.doubleClick()

    #pyautogui.doubleClick(200, 200)
    # pyautogui.moveTo(30, 30, duration = 3, tween = pyautogui.easeInCirc)
    # pyautogui.doubleClick()

    # Explorer (Prieskumnik)
    # pyautogui.hotkey("win", "e")

    # Run (Spustenie)
    # pyautogui.hotkey("win", "r")
    # pyautogui.typewrite("opera\n")
    # time.sleep(2)
    # pyautogui.typewrite("https://www.vita.sk\n")
    # pyautogui.hotkey("alt", "f4")
    #
    # pyautogui.hotkey("win", "r")
    # pyautogui.typewrite("notepad.exe\n")

    pyautogui.alert("Mam pokracovat v automatizacii?")
    pyautogui.confirm("Zadaj svoju volbu", buttons=["A", "B", "C"])
    vek = pyautogui.prompt("Zadaj svoj vek: ")
    heslo = pyautogui.password("Zadaj heslo: ")

    print(f"vek: {vek} a heslo: {heslo}")
    # obrazok1 = pyautogui.screenshot()
    # obrazok1.save("obrazovka.png")
    #
    # time.sleep(3)
    # obrazok2 = pyautogui.screenshot("desktop.png")
