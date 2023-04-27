import schedule
import time
from playsound import playsound

def spusti_zvuk():
    zvuk_efekt = "C:\\Users\\Administrator\\PycharmProjects\\P01_Planovanie_Uloh\\Zvuky\\tada.mp3"
    playsound(zvuk_efekt)

def vykonaj_nieco():
    print("Vykonal som nieco...")

def print_hi(name):
    print(f'Ahoj, {name}')  # Press Ctrl+F8 to toggle the breakpoint.

if __name__ == '__main__':
    print_hi('Ahoj automatizacia uloh')
    

    #schedule.every(2).minutes.do(vykonaj_nieco)
    schedule.every(10).seconds.do(print_hi, name="Adam Sangala")
    schedule.every().monday.do(vykonaj_nieco)
    schedule.every(20).seconds.do(spusti_zvuk)
    schedule.every().day.at("10:32").do(spusti_zvuk)
    # schedule.every().day.at("10:00").do(vykonaj_nieco)

    while True:
        schedule.run_pending()
        time.sleep(1)
    


