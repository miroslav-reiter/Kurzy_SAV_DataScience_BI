import subprocess

if __name__ == '__main__':
    print('Wifi Hesla')
    meta_data = subprocess.check_output(["netsh", "wlan", "show", "profiles"])
    print(meta_data)
    data = meta_data.decode("utf-8", errors="backslashreplace")
    print(data)
    data = data.split("\n")
    print(data)

    profily = []

    for i in data:
        if "All User Profile" in i:
            i = i.split(":")

            i = i[1]

            i = i[1:-1]

            profily.append(i)

    # print(profily)
    print("{:<30} | {:<}".format("WIFI Nazov", "Heslo"))
    print("--------------------------------------------")

    for i in profily:
        try:
            vysledky = subprocess.check_output(["netsh", "wlan", "show", "profiles", i , "key=clear"])
            vysledky = vysledky.decode("utf-8", errors ="backslashreplace")
            vysledky = vysledky.split("\n")
            vysledky = [b.split(":")[1][1:-1] for b in vysledky if "Key Content" in b]

            try:
                print("{:<30} | {:<}".format(i, vysledky[0]))
            except IndexError:
                print("{:<30} | {:<}".format(i, ""))
        except subprocess.CalledProcessError:
            print("Vyskytla sa chyba kodovania...")

