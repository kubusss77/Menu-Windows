@echo off

setlocal enabledelayedexpansion

set "menu_egzamin_status=0"
set "menu_egzamin_podana_odp=0"
set "menu_egzamin_ilosc_odp=0"
set "menu_egzamin_pytanie_1_odp=0"
set "menu_egzamin_pytanie_2_odp=0"
set "menu_egzamin_pytanie_3_odp=0"
set "menu_egzamin_pytanie_4_odp=0"
set "menu_egzamin_pytanie_5_odp=0"
set "menu_egzamin_wyniki=0"

for /f %%i in ('date /T') do set data_uruchomienia_skryptu=%%i
for /f %%i in ('time /T') do set czas_uruchomienia_skryptu=%%i


::Aby na początku skryptu nie wyświetlało się logo, nalezy odkomentować poniszą linię:
goto kat_glowna

mode 62,10
color 3B

echo 
echo                  _
echo                _(_)_                          wWWWw   _
echo    @@@@       (_)@(_)   vVVVv     _     @@@@  (___) _(_)_
echo   @@()@@ wWWWw  (_)\    (___)   _(_)_  @@()@@   Y  (_)@(_)
echo    @@@@  (___)     `^|/    Y    (_)@(_)  @@@@   \^|/   (_)\
echo     /      Y       \^|    \^|/    /(_)    \^|      ^|/      ^|
echo    ^|     \ ^|/       ^| / \ ^| /  \^|/       ^|/    \^|      \^|/
echo    ^|//   \\^|///  \\\^|//\\\^|/// \^|///  \\\^|//  \\^|//  \\\^|//
echo   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

:: Źródło grafiki: https://ascii.co.uk/art/flowers

timeout 1 >nul
color 3B
timeout 1 >nul
color 2A
timeout 1 >nul
color 6E
timeout 1 >nul
color 4C
timeout 1 >nul
color 5D
timeout 1 >nul
color 0f

echo(
pathping 127.0.0.1 -n -q 1 -p 50 >nul
echo(
pathping 127.0.0.1 -n -q 1 -p 50 >nul
echo(
pathping 127.0.0.1 -n -q 1 -p 50 >nul
echo(
pathping 127.0.0.1 -n -q 1 -p 50 >nul
echo(
pathping 127.0.0.1 -n -q 1 -p 50 >nul
echo(
pathping 127.0.0.1 -n -q 1 -p 50 >nul
echo(
pathping 127.0.0.1 -n -q 1 -p 50 >nul
echo(
pathping 127.0.0.1 -n -q 1 -p 50 >nul
echo(
pathping 127.0.0.1 -n -q 1 -p 50 >nul
echo(
pathping 127.0.0.1 -n -q 1 -p 50 >nul
echo(



:kat_glowna
	cls
	mode 80,13

	echo.
	echo                              (c) Jakub Szczepa 2023
	echo                                   Menu glowne
	echo.

	pathping 127.0.0.1 -n -q 1 -p 50 >nul
	echo    Wybierz kategorie glowna:
	pathping 127.0.0.1 -n -q 1 -p 50 >nul
	echo     1. Dane
	pathping 127.0.0.1 -n -q 1 -p 50 >nul
	echo     2. Uzytkownicy lokalni
	pathping 127.0.0.1 -n -q 1 -p 50 >nul
	echo     3. Informacje
	pathping 127.0.0.1 -n -q 1 -p 50 >nul
	echo     4. Narzedzia
	pathping 127.0.0.1 -n -q 1 -p 50 >nul
	echo     5. Zapis
	pathping 127.0.0.1 -n -q 1 -p 50 >nul
	echo     6. Uruchamianie
	pathping 127.0.0.1 -n -q 1 -p 50 >nul
	echo     7. Egzamin


	choice /c 1234567 /n /m " > "
	cls
	goto %ERRORLEVEL%_kat_glowna_idz

	
	:1_kat_glowna_blad
		set "naglowek_listy=Wprowadzono niepoprawna wartosc. Wybierz jedna z ponizszych opcji..."
		goto 1_kat_glowna
		
	:1_kat_glowna_idz
		set "naglowek_listy=Wybierz jedna z ponizszych opcji i kliknij klawisz Enter..."
		goto 1_kat_glowna
		
	:1_kat_glowna
		cls
		mode 80,11
		
		echo.
		echo                              (c) Jakub Szczepa 2023
		echo                                Menu glowne ^> Dane
		echo.
		
		echo   %naglowek_listy%
		echo    a. Nazwisko
		echo    b. Imie
		echo    c. Klasa
		echo    d. Numer w dzienniku
		echo   ...lub wcisnij klawisz Enter bez wpisywania czegokolwiek, aby wrocic.
		
		set /p "menu_dane=> "
		
		if "!menu_dane!"=="" goto kat_glowna
		if "!menu_dane!"=="a" goto menu_dane_a
		if "!menu_dane!"=="b" goto menu_dane_b
		if "!menu_dane!"=="c" goto menu_dane_c
		if "!menu_dane!"=="d" goto menu_dane_d
		
		set "menu_dane="
		goto 1_kat_glowna_blad
		
		
		:menu_dane_a
			set "menu_dane="
			cls
			mode 80,13
			
			echo.
			echo                              (c) Jakub Szczepa 2023
			echo.
			
			echo    ,adPPYba, 888888888  ,adPPYba, 888888888  ,adPPYba, 8b,dPPYba,  ,adPPYYba,  
			echo    I8[    ""      a8P" a8"     ""      a8P" a8P_____88 88P'    "8a ""     `Y8  
			echo     `"Y8ba,    ,d8P'   8b           ,d8P'   8PP""""""" 88       d8 ,adPPPPP88  
			echo    aa    ]8I ,d8"      "8a,   ,aa ,d8"      "8b,   ,aa 88b,   ,a8" 88,    ,88  
			echo    `"YbbdP"' 888888888  `"Ybbd8"' 888888888  `"Ybbd8"' 88`YbbdP"'  `"8bbdP"Y8  
			echo                                                        88                      
			echo                                                        88                      
			
			::Źródło grafiki: https://ascii.co.uk/text

			echo.
			echo   Aby wrocic, wcisnij dowolny klawisz.
			
			pause >nul
			goto 1_kat_glowna_idz
			
			
		:menu_dane_b
			set "menu_dane="
			cls
			mode 80,16
			
			echo.
			echo                              (c) Jakub Szczepa 2023
			echo.
			
			echo                    88            88                   88         	
			echo                    ""            88                   88           
			echo                                  88                   88           
			echo                    88 ,adPPYYba, 88   ,d8 88       88 88,dPPYba,   
			echo                    88 ""     `Y8 88 ,a8"  88       88 88P'    "8a  
			echo                    88 ,adPPPPP88 8888[    88       88 88       d8  
			echo                    88 88,    ,88 88`"Yba, "8a,   ,a88 88b,   ,a8"  
			echo                    88 `"8bbdP"Y8 88   `Y8a `"YbbdP'Y8 8Y"Ybbd8"'   
			echo                   ,88                                              
			echo                 888P"                                              
			
			::Źródło grafiki: https://ascii.co.uk/text

			echo.
			echo   Aby wrocic, wcisnij dowolny klawisz.
			
			pause >nul
			goto 1_kat_glowna_idz
			
			
		:menu_dane_c
			set "menu_dane="
			cls
			mode 80,14
			
			echo.
			echo                              (c) Jakub Szczepa 2023
			echo.
			
			echo                                  88 88 88           
			echo                                ,d88 88 88           
			echo                              888888 88 88           
			echo                                  88 88 88,dPPYba,   
			echo                                  88 88 88P'    "8a  
			echo                                  88 88 88       d8  
			echo                                  88 88 88b,   ,a8"  
			echo                                  88 88 8Y"Ybbd8"'   

			::Źródło grafiki: https://ascii.co.uk/text
			
			echo.
			echo   Aby wrocic, wcisnij dowolny klawisz.
			
			pause >nul
			goto 1_kat_glowna_idz
			
			
		:menu_dane_d
			set "menu_dane="
			cls
			mode 80,14
			
			echo.
			echo                              (c) Jakub Szczepa 2023
			echo.
			
			echo                               ad888888b,  ad88888ba   
			echo                              d8"     "88 d8"     "88  
			echo                                      a8P 8P       88  
			echo                                   ,d8P"  Y8,    ,d88  
			echo                                 a8P"      "PPPPPP"88  
			echo                               a8P'                8P  
			echo                              d8"         8b,    a8P   
			echo                              88888888888 `"Y8888P'    

			::Źródło grafiki: https://ascii.co.uk/text

			echo.
			echo   Aby wrocic, wcisnij dowolny klawisz.
			
			pause >nul	
			goto 1_kat_glowna_idz
		
		
		
	:2_kat_glowna_blad
		set "naglowek_listy=Wprowadzono niepoprawna wartosc. Wybierz jedna z ponizszych opcji..."
		goto 2_kat_glowna
		
	:2_kat_glowna_idz
		set "naglowek_listy=Wybierz jedna z ponizszych opcji i kliknij klawisz Enter..."
		goto 2_kat_glowna
		
	:2_kat_glowna
		cls
		mode 80,11
		
		echo.
		echo                              (c) Jakub Szczepa 2023
		echo                        Menu glowne ^> Uzytkownicy lokalni
		echo.
		
		echo   %naglowek_listy%
		echo    a. Wyswietl informacje o aktualnie zalogowanym uzytkowniku
		echo    b. Wyswietl grupy obecne w systemie
		echo    c. Wyswietl uzytkownikow w grupie Administratorzy
		echo    d. Utworz na pulpicie plik z informacjami z powyzszych trzech opcji
		echo   ...lub wcisnij klawisz Enter bez wpisywania czegokolwiek, aby wrocic.
		
		set /p "menu_uzytkownicy=> "
		
		if "!menu_uzytkownicy!"=="" goto kat_glowna
		if "!menu_uzytkownicy!"=="a" goto menu_uzytkownicy_a
		if "!menu_uzytkownicy!"=="b" goto menu_uzytkownicy_b
		if "!menu_uzytkownicy!"=="c" goto menu_uzytkownicy_c
		if "!menu_uzytkownicy!"=="d" goto menu_uzytkownicy_d
		
		set "menu_uzytkownicy="
		goto 2_kat_glowna_blad
		
		
		:menu_uzytkownicy_a
			set "menu_uzytkownicy="
			cls
			mode 80,31
			
			echo.
			echo                              (c) Jakub Szczepa 2023
			echo.
			
			net user %username%
			
			echo   Aby wrocic, wcisnij dowolny klawisz.
			
			pause >nul
			goto 2_kat_glowna_idz
			
			
		:menu_uzytkownicy_b
			set "menu_uzytkownicy="
			for /f %%i in ('net localgroup ^| find /c /v ""') do set linie_uzytkownicy_b=%%i
			set /a "linie_uzytkownicy_b=%linie_uzytkownicy_b%+4"
			cls
			mode 80,%linie_uzytkownicy_b%
			
			echo.
			echo                              (c) Jakub Szczepa 2023
			
			net localgroup
			
			echo   Aby wrocic, wcisnij dowolny klawisz.
			pause >nul
			
			goto 2_kat_glowna_idz
			
			
		:menu_uzytkownicy_c
			set "menu_uzytkownicy="
			for /f %%i in ('net localgroup administrators ^| find /c /v ""') do set linie_uzytkownicy_c=%%i
			set /a "linie_uzytkownicy_c=%linie_uzytkownicy_c%+6"
			cls
			mode 80,%linie_uzytkownicy_c%
			
			echo.
			echo                              (c) Jakub Szczepa 2023
			echo.
			
			net localgroup administrators
			
			echo   Aby wrocic, wcisnij dowolny klawisz.
			
			pause >nul
			goto 2_kat_glowna_idz
			
			
		:menu_uzytkownicy_d
			set "menu_uzytkownicy="
			cls
			mode 80,10
			
			for /f %%i in ('date /T') do set data_uzytkownicy_d=%%i
			for /f %%i in ('time /T') do set czas_uzytkownicy_d=%%i

			::Lokalizacja raportu
				set "plik_uzytkownicy_d=C:\Users\%username%\Desktop\uzytkownicy.txt"
			
			::PLIK
				echo. >> %plik_uzytkownicy_d%
				echo                              (c) Jakub Szczepa 2023 >> %plik_uzytkownicy_d%
				echo                       Raport utworzono %data_uzytkownicy_d% o %czas_uzytkownicy_d%. >> %plik_uzytkownicy_d%
			
			
				echo. >> %plik_uzytkownicy_d%
				echo. >> %plik_uzytkownicy_d%
				echo. >> %plik_uzytkownicy_d%
				echo  Informacje o aktualnie zalogowanym uzytkowniku: >> %plik_uzytkownicy_d%
				echo. >> %plik_uzytkownicy_d%
			
				net user %username% >> %plik_uzytkownicy_d%
			
				echo. >> %plik_uzytkownicy_d%
				echo. >> %plik_uzytkownicy_d%
				echo  Grupy obecne w systemie: >> %plik_uzytkownicy_d%
				echo. >> %plik_uzytkownicy_d%
			
				net localgroup >> %plik_uzytkownicy_d%
			
				echo. >> %plik_uzytkownicy_d%
				echo. >> %plik_uzytkownicy_d%
				echo  Uzytkownicy w grupie Administratorzy: >> %plik_uzytkownicy_d%
				echo. >> %plik_uzytkownicy_d%
				net localgroup administrators >> %plik_uzytkownicy_d%
			
			::KONSOLA
				set "sekundy_do_powrotu=6"
			
				:menu_uzytkownicy_d_konsola
					cls
					set /a "sekundy_do_powrotu=%sekundy_do_powrotu%-1"

					echo.
					echo                              (c) Jakub Szczepa 2023
					echo.

					echo   Pod nazwa uzytkownicy.txt utworzono na pulpicie raport z:
					echo    - informacjami o aktualnie zalogowanym uzytkowniku
					echo    - grupami obecnymi w systemie
					echo    - uzytkownikami w grupie administratorzy
					echo.
					echo   Powrot do poprzedniego menu za %sekundy_do_powrotu%...
				
					if "%sekundy_do_powrotu%" gtr "1" (
						timeout 1 >nul
						goto menu_uzytkownicy_d_konsola
					)
			
			timeout 1 >nul
			goto 2_kat_glowna_idz
		

		
	:3_kat_glowna_blad
		set "naglowek_listy=Wprowadzono niepoprawna wartosc. Wybierz jedna z ponizszych opcji..."
		goto 3_kat_glowna
		
	:3_kat_glowna_idz
		set "naglowek_listy=Wybierz jedna z ponizszych opcji i kliknij klawisz Enter..."
		goto 3_kat_glowna
		
	:3_kat_glowna
		cls
		mode 80,12
		
		echo.
		echo                              (c) Jakub Szczepa 2023
		echo                             Menu glowne ^> Informacje
		echo.
		
		echo   %naglowek_listy%
		echo    a. Wersja systemu operacyjnego
		echo    b. Pliki tymczasowe
		echo    c. Adresy MAC kart sieciowych
		echo    d. Lista procesow
		echo    e. Atrybuty plikow w aktualnej lokalizacji
		echo   ...lub wcisnij klawisz Enter bez wpisywania czegokolwiek, aby wrocic.
		
		set /p "menu_informacje=> "
		
		if "!menu_informacje!"=="" goto kat_glowna
		if "!menu_informacje!"=="a" goto menu_informacje_a
		if "!menu_informacje!"=="b" goto menu_informacje_b
		if "!menu_informacje!"=="c" goto menu_informacje_c
		if "!menu_informacje!"=="d" goto menu_informacje_d
		if "!menu_informacje!"=="e" goto menu_informacje_e
		
		set "menu_informacje="
		goto 3_kat_glowna_blad
		
		
		:menu_informacje_a
			set "menu_informacje="
			cls
			mode 80,8

			echo.
			echo                              (c) Jakub Szczepa 2023
			echo.

			systeminfo | findstr /B /C:"OS Name" /B /C:"OS Version"
			
			echo.
			echo   Aby wrocic, wcisnij dowolny klawisz.
			
			pause >nul
			goto 3_kat_glowna_idz
			
			
		:menu_informacje_b
			set "menu_informacje="
			cls

			net session >nul 2>&1
			if "%ERRORLEVEL%" neq "0" (
				set "menu_informacje_b_temp_systemowy_linie=22"
				goto menu_informacje_b_mode
			)
			set "menu_informacje_b_temp_systemowy_linie=20"

			:menu_informacje_b_mode
				mode 80,%menu_informacje_b_temp_systemowy_linie%

				set "temp_uzytkownika=C:\Users\%username%\AppData\Local\Temp"
				set "temp_systemowy=C:\Windows\Temp"

			
				echo.
				echo                              (c) Jakub Szczepa 2023
				echo.

				::TEMP UZYTKOWNIKA
				echo    W oddzielnym oknie otwarty zostanie eksplorator plikow
					echo    z plikami tymczasowymi aktualnie zalogowanego uzytkownika.
					timeout 2 >nul
					start %windir%\explorer.exe "%temp_uzytkownika%"
					timeout 2 >nul
					echo.
					echo    Czy chcesz je wszystkie usunac? (T/N)

					choice /c tn /n /m " > "
					goto %ERRORLEVEL%_menu_informacje_b_temp_uzytkownika

					:1_menu_informacje_b_temp_uzytkownika
						echo       Usuwanie plikow w lokalizacji %temp_uzytkownika%...
						rmdir /s /q "%temp_uzytkownika%" >nul 2>&1
						goto menu_informacje_b_temp_uzytkownika_koniec

					:2_menu_informacje_b_temp_uzytkownika
						echo       Pomijanie plikow w lokalizacji %temp_uzytkownika%...

					:menu_informacje_b_temp_uzytkownika_koniec

			timeout 1 >nul
			echo.
			echo.

			::TEMP SYSTEMOWY
				echo    W oddzielnym oknie otwarty zostanie eksplorator plikow
				echo    z plikami tymczasowymi systemu operacyjnego.
				timeout 2 >nul
				start %windir%\explorer.exe "%temp_systemowy%"
				timeout 2 >nul
				echo.

				net session >nul 2>&1
				if "%ERRORLEVEL%" neq "0" (
					echo    Skrypt nie zostal uruchomiony z uprawnieniami administratora.
					echo    Jesli oprocz wyswietlenia systemowych plikow tymczasowych,
					echo    chcesz je rowniez usunac, uruchom ten skrypt jako administrator.
					echo.
					goto 2_menu_informacje_b_temp_systemowy
				)

				echo    Czy chcesz je wszystkie usunac? (T/N)

				choice /c tn /n /m " > "
				goto %ERRORLEVEL%_menu_informacje_b_temp_systemowy

			:1_menu_informacje_b_temp_systemowy
				echo       Usuwanie plikow w lokalizacji %temp_systemowy%...
				rmdir /s /q "%temp_systemowy%" >nul 2>&1
				goto menu_informacje_b_temp_systemowy_koniec

			:2_menu_informacje_b_temp_systemowy
				echo       Pomijanie plikow w lokalizacji %temp_systemowy%...

			:menu_informacje_b_temp_systemowy_koniec

			echo.
			echo   Aby wrocic, wcisnij dowolny klawisz.
			
			pause >nul
			goto 3_kat_glowna_idz
			
			
		:menu_informacje_c
			set "menu_informacje="
			cls

			for /f %%i in ('getmac ^| find /c /v ""') do set menu_informacje_c_linie=%%i
			set /a "menu_informacje_c_linie=%menu_informacje_c_linie%+5"
			mode 80,%menu_informacje_c_linie%
			
			echo.
			echo                              (c) Jakub Szczepa 2023

			getmac
			
			echo.
			echo   Aby wrocic, wcisnij dowolny klawisz.
			
			pause >nul
			goto 3_kat_glowna_idz
			
			
		:menu_informacje_d
			set "menu_informacje="
			cls

			for /f %%i in ('tasklist ^| find /c /v ""') do set menu_informacje_d_linie=%%i
			set /a "menu_informacje_d_linie=%menu_informacje_d_linie%+3"
			mode 80,%menu_informacje_d_linie%
			
			echo.
			echo                              (c) Jakub Szczepa 2023

			tasklist

			echo.
			echo   Aby wrocic, wcisnij dowolny klawisz.
			
			pause >nul
			goto 3_kat_glowna_idz


		:menu_informacje_e
			set "menu_informacje="
			cls

			for /f %%i in ('attrib "%~dp0\*" ^| find /c /v ""') do set menu_informacje_e_linie=%%i
			net session >nul 2>&1
			if "%ERRORLEVEL%" neq "0" (
				set /a "menu_informacje_e_linie=%menu_informacje_e_linie%+16"
				goto menu_informacje_e_mode
			)
			set /a "menu_informacje_e_linie=%menu_informacje_e_linie%+12"

			:menu_informacje_e_mode
				mode 80,%menu_informacje_e_linie%
			
				echo.
				echo                              (c) Jakub Szczepa 2023
				echo.

				net session >nul 2>&1
				if "%ERRORLEVEL%" neq "0" (
					echo    Skrypt nie zostal uruchomiony z uprawnieniami administratora.
					echo    Jesli chcesz wyswietlic wszystkie pliki - rowniez te, ktore sa ukryte 
					echo    dla standardowych uzytkownikow, uruchom ten skrypt jako administrator.
					echo.
				)
				echo    Ponizsze atrybuty przed lokalizacja i nazwa plikow oznaczaja:
				echo     R - plik tylko do odczytu
				echo     A - plik zarchiwizowany ^(plik zostal zmieniony od ostatniego backupu^)
				echo     S - plik systemowy
				echo     H - plik ukryty
				echo.

				::Wiecej informacji o atrybutach: https://en.wikipedia.org/wiki/File_attribute

				attrib "%~dp0\*"

				echo.
				echo   Aby wrocic, wcisnij dowolny klawisz.
			
			pause >nul
			goto 3_kat_glowna_idz
		


	:4_kat_glowna_blad
		set "naglowek_listy=Wprowadzono niepoprawna wartosc. Wybierz jedna z ponizszych opcji..."
		goto 4_kat_glowna
		
	:4_kat_glowna_idz
		set "naglowek_listy=Wybierz jedna z ponizszych opcji i kliknij klawisz Enter..."
		goto 4_kat_glowna
		
	:4_kat_glowna
		cls
		mode 80,23
		
		echo.
		echo                              (c) Jakub Szczepa 2023
		echo                              Menu glowne ^> Narzedzia
		echo.
		
		echo   %naglowek_listy%
		echo    dyski         - Zarzadzanie dyskami
		echo    kopia         - Kopia zapasowa
		echo    lupa          - Lupa
		echo    panel         - Glowna strona panelu sterowania
		echo    polaczenia    - Polaczenia sieciowe (Karty sieciowe)
		echo    pomoc         - Pomoc zdalna
		echo    programy      - Programy i funkcje
		echo    przywracanie  - Punkt przywracania
		echo    rejestr       - Edytor rejestru
		echo    rejestrator   - Rejestrator krokow (Rejestrator problemow)
		echo    tablica       - Tablica znakow
		echo    urzadzenia    - Menedzer urzadzen
		echo    uzytkownicy   - Zarzadzanie uzytkownikami i grupami
		echo    zasady        - Zarzadzanie zasadami grup
		echo    zdalny        - Pulpit zdalny
		echo    zdarzenia     - Podglad zdarzen
		echo   ...lub wcisnij klawisz Enter bez wpisywania czegokolwiek, aby wrocic.
		
		set /p "menu_narzedzia=> "
		
		if "!menu_narzedzia!"=="" goto kat_glowna
		if "!menu_narzedzia!"=="dyski" (
			set "menu_narzedzia_wybor_pelna_nazwa=Zarzadzanie dyskami"
			set "menu_narzedzia_narzedzie=diskmgmt"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="kopia" (
			set "menu_narzedzia_wybor_pelna_nazwa=Kopia zapasowa"
			set "menu_narzedzia_narzedzie=sdclt"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="lupa" (
			set "menu_narzedzia_wybor_pelna_nazwa=Lupa"
			set "menu_narzedzia_narzedzie=magnify"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="panel" (
			set "menu_narzedzia_wybor_pelna_nazwa=Panel sterowania"
			set "menu_narzedzia_narzedzie=control"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="polaczenia" (
			set "menu_narzedzia_wybor_pelna_nazwa=Polaczenia sieciowe"
			set "menu_narzedzia_narzedzie=ncpa.cpl"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="pomoc" (
			set "menu_narzedzia_wybor_pelna_nazwa=Pomoc zdalna"
			set "menu_narzedzia_narzedzie=msra"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="programy" (
			set "menu_narzedzia_wybor_pelna_nazwa=Programy i funkcje"
			set "menu_narzedzia_narzedzie=appwiz.cpl"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="przywracanie" (
			set "menu_narzedzia_wybor_pelna_nazwa=Punkt przywracania"
			set "menu_narzedzia_narzedzie=rstrui"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="rejestr" (
			set "menu_narzedzia_wybor_pelna_nazwa=Edytor rejestru"
			set "menu_narzedzia_narzedzie=regedit"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="rejestrator" (
			set "menu_narzedzia_wybor_pelna_nazwa=Rejestrator krokow"
			set "menu_narzedzia_narzedzie=psr"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="tablica" (
			set "menu_narzedzia_wybor_pelna_nazwa=Tablica znakow"
			set "menu_narzedzia_narzedzie=charmap"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="urzadzenia" (
			set "menu_narzedzia_wybor_pelna_nazwa=Menedzer urzadzen"
			set "menu_narzedzia_narzedzie=devmgmt"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="uzytkownicy" (
			set "menu_narzedzia_wybor_pelna_nazwa=Zarzadzanie uzytkownikami i grupami"
			set "menu_narzedzia_narzedzie=lusrmgr"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="zasady" (
			set "menu_narzedzia_wybor_pelna_nazwa=Zarzadzanie zasadami grup"
			set "menu_narzedzia_narzedzie=gpedit"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="zdalny" (
			set "menu_narzedzia_wybor_pelna_nazwa=Pulpit zdalny"
			set "menu_narzedzia_narzedzie=mstsc"
			goto menu_narzedzia_wybor
		)
		if "!menu_narzedzia!"=="zdarzenia" (
			set "menu_narzedzia_wybor_pelna_nazwa=Podglad zdarzen"
			set "menu_narzedzia_narzedzie=eventvwr"
			goto menu_narzedzia_wybor
		)
		
		set "menu_narzedzia="
		goto 4_kat_glowna_blad


		:menu_narzedzia_wybor
			set "menu_narzedzia="
			set "menu_narzedzia_wybor_powrot_za=6"
			cls
			mode 80,6

			start %menu_narzedzia_narzedzie%

			:menu_narzedzia_wybor_czekanie
				cls
				set /a "menu_narzedzia_wybor_powrot_za=%menu_narzedzia_wybor_powrot_za%-1"

				echo.
				echo                              (c) Jakub Szczepa 2023
				echo.

				echo    Narzedzie %menu_narzedzia_wybor_pelna_nazwa% zostalo uruchomione.
				echo    Powrot do poprzedniego menu za %menu_narzedzia_wybor_powrot_za%...

				if "%menu_narzedzia_wybor_powrot_za%" gtr "1" (
					timeout 1 >nul
					goto menu_narzedzia_wybor_czekanie
				)

			timeout 1 >nul
			goto 4_kat_glowna_idz



	:5_kat_glowna_blad
		set "naglowek_listy=Wprowadzono niepoprawna wartosc. Wybierz jedna z ponizszych opcji..."
		goto 5_kat_glowna
		
	:5_kat_glowna_idz
		set "naglowek_listy=Wybierz jedna z ponizszych opcji i kliknij klawisz Enter..."
		goto 5_kat_glowna
		
	:5_kat_glowna
		cls
		mode 80,10
		
		echo.
		echo                              (c) Jakub Szczepa 2023
		echo                                Menu glowne ^> Zapis
		echo.
		
		echo   %naglowek_listy%
		echo    a. Zapisanie na pulpicie drzewa zawartosci dysku C
		echo    b. Zapisanie dlaczego lubie systemy operacyjne
		echo    c. Zapisanie informacji o uruchomieniu tego skryptu
		echo   ...lub wcisnij klawisz Enter bez wpisywania czegokolwiek, aby wrocic.
		
		set /p "menu_zapis=> "
		
		if "!menu_zapis!"=="" goto kat_glowna
		if "!menu_zapis!"=="a" goto menu_zapis_a
		if "!menu_zapis!"=="b" goto menu_zapis_b
		if "!menu_zapis!"=="c" goto menu_zapis_c
		
		set "menu_zapis="
		goto 5_kat_glowna_blad
		
		
		:menu_zapis_a
			set "menu_zapis="
			cls
			mode 80,4

			::Lokalizacja pliku tekstowego
				set "menu_zapis_a_plik=C:\Users\%username%\Desktop\drzewo.txt"

			::KONSOLA1
				echo.
				echo                              (c) Jakub Szczepa 2023
				echo.
				echo    Tworzenie pliku tekstowego...
			

			::PLIK
				echo. >> %menu_zapis_a_plik%
				echo                              (c) Jakub Szczepa 2023 >> %menu_zapis_a_plik%
				echo. >> %menu_zapis_a_plik%
				echo    Zawartosc dysku C jest nastepujaca: >> %menu_zapis_a_plik%
				echo. >> %menu_zapis_a_plik%

				tree c:/ /f >> %menu_zapis_a_plik%

			::KONSOLA2
				set "menu_zapis_a_powrot_za=6"

				:menu_zapis_a_czekanie
					cls
					mode 80,8
					set /a "menu_zapis_a_powrot_za=%menu_zapis_a_powrot_za%-1"

					echo.
					echo                              (c) Jakub Szczepa 2023
					echo.
				
					echo    Pod nazwa drzewo.txt zapisano na pulpicie drzewo zawartosci dysku C.
					echo.
					echo    Powrot do poprzedniego menu za %menu_zapis_a_powrot_za%...
				
					if "%menu_zapis_a_powrot_za%" gtr "1" (
						timeout 1 >nul
						goto menu_zapis_a_czekanie
					)
			
			timeout 1 >nul
			goto 5_kat_glowna_idz
			
			
		:menu_zapis_b
			set "menu_zapis="
			cls
			mode 80,8

			::Lokalizacja pliku tekstowego
				set "menu_zapis_b_plik=%~dp0Szczepa.txt"

			::PLIK
				echo. >> %menu_zapis_b_plik%
				echo                              (c) Jakub Szczepa 2023 >> %menu_zapis_b_plik%
				echo. >> %menu_zapis_b_plik%
				echo    Lubie systemy operacyjne bo systemy sa super. >> %menu_zapis_b_plik%

			::KONSOLA
				set "menu_zapis_b_powrot_za=6"

				:menu_zapis_b_czekanie
					cls
					set /a "menu_zapis_b_powrot_za=%menu_zapis_b_powrot_za%-1"
				
					echo.
					echo                              (c) Jakub Szczepa 2023
					echo.
				
					echo    Utworzono plik tekstowy w lokalizacji tego skryptu,
					echo    tj. %~dp0
					echo.
					echo    Powrot do poprzedniego menu za %menu_zapis_b_powrot_za%...

					if "%menu_zapis_b_powrot_za%" gtr "1" (
						timeout 1 >nul
						goto menu_zapis_b_czekanie
					)
			
			timeout 1 >nul
			goto 5_kat_glowna_idz
			
			
		:menu_zapis_c
			set "menu_zapis="
			cls
			mode 80,8

			::Lokalizacja pliku tekstowego
				set "menu_zapis_c_plik=%~dp0info.txt"

			::PLIK
				echo. >> "%menu_zapis_c_plik%"
				echo                              (c) Jakub Szczepa 2023 >> "%menu_zapis_c_plik%"
				echo. >> "%menu_zapis_c_plik%"
			
				echo    Uzytkownik %username% uruchomil skrypt %~nx0: >> "%menu_zapis_c_plik%"
				echo     - w dniu %data_uruchomienia_skryptu% >> "%menu_zapis_c_plik%"
				echo     - o godzinie %czas_uruchomienia_skryptu% >> "%menu_zapis_c_plik%"
				echo     - w lokalizacji %~dp0 >> "%menu_zapis_c_plik%"
			
			::KONSOLA
				set "menu_zapis_c_powrot_za=6"

				:menu_zapis_c_czekanie
					cls
					set /a "menu_zapis_c_powrot_za=%menu_zapis_c_powrot_za%-1"
				
					echo.
					echo                              (c) Jakub Szczepa 2023
					echo.
				
					echo    Utworzono plik tekstowy z informacjami o uruchomieniu tego skryptu
					echo    w jego lokalizacji, tj. %~dp0
					echo.
					echo    Powrot do poprzedniego menu za %menu_zapis_c_powrot_za%...

					if "%menu_zapis_c_powrot_za%" gtr "1" (
						timeout 1 >nul
						goto menu_zapis_c_czekanie
					)

			timeout 1 >nul
			goto 5_kat_glowna_idz



	:6_kat_glowna_blad
		set "naglowek_listy=Wprowadzono niepoprawna wartosc. Wybierz jedna z ponizszych opcji..."
		goto 6_kat_glowna
		
	:6_kat_glowna_idz
		set "naglowek_listy=Wybierz jedna z ponizszych opcji i kliknij klawisz Enter..."
		goto 6_kat_glowna
		
	:6_kat_glowna
		cls
		mode 80,13
		
		echo.
		echo                              (c) Jakub Szczepa 2023
		echo                            Menu glowne ^> Uruchamianie
		echo.
		
		echo    %naglowek_listy%
		echo     a. Strona internetowa ZSL
		echo     b. Dziennik elektroniczny
		echo     c. Notatnik
		echo     d. Wylaczenie notatnika
		echo     e. Wylaczenie komputera
		echo     f. Wylogowanie uzytkownika
		echo    ...lub wcisnij klawisz Enter bez wpisywania czegokolwiek, aby wrocic.
		
		set /p "menu_uruchamianie=> "
		
		if "!menu_uruchamianie!"=="" goto kat_glowna
		if "!menu_uruchamianie!"=="a" goto menu_uruchamianie_a
		if "!menu_uruchamianie!"=="b" goto menu_uruchamianie_b
		if "!menu_uruchamianie!"=="c" goto menu_uruchamianie_c
		if "!menu_uruchamianie!"=="d" goto menu_uruchamianie_d
		if "!menu_uruchamianie!"=="e" goto menu_uruchamianie_e
		if "!menu_uruchamianie!"=="f" goto menu_uruchamianie_f
		
		set "menu_uruchamianie="
		goto 6_kat_glowna_blad
		
		
		:menu_uruchamianie_a
			set "menu_uruchamianie="
			set "menu_uruchamianie_a_powrot_za=6"
			cls
			mode 80,6

			start http://tl.krakow.pl

			:menu_uruchamianie_a_czekanie
				cls
				set /a "menu_uruchamianie_a_powrot_za=%menu_uruchamianie_a_powrot_za%-1"

				echo.
				echo                              (c) Jakub Szczepa 2023
				echo.

				echo    W przegladarce zostala otwarta strona internetowa ZSL.
				echo.
				echo    Powrot do poprzedniego menu za %menu_uruchamianie_a_powrot_za%...

				if "%menu_uruchamianie_a_powrot_za%" gtr "1" (
					timeout 1 >nul
					goto menu_uruchamianie_a_czekanie
				)
			
			timeout 1 >nul
			goto 6_kat_glowna_idz


		:menu_uruchamianie_b
			set "menu_uruchamianie="
			set "menu_uruchamianie_b_powrot_za=6"
			cls
			mode 80,7

			start http://portal.librus.pl/rodzina/synergia/loguj

			:menu_uruchamianie_b_czekanie
				cls
				set /a "menu_uruchamianie_b_powrot_za=%menu_uruchamianie_b_powrot_za%-1"

				echo.
				echo                              (c) Jakub Szczepa 2023
				echo.

				echo    W przegladarce zostal otwarty dziennik elektroniczny.
				echo.
				echo    Powrot do poprzedniego menu za %menu_uruchamianie_b_powrot_za%...

				if "%menu_uruchamianie_b_powrot_za%" gtr "1" (
					timeout 1 >nul
					goto menu_uruchamianie_b_czekanie
				)
			
			timeout 1 >nul
			goto 6_kat_glowna_idz
			
			
		:menu_uruchamianie_c
			set "menu_uruchamianie="
			set "menu_uruchamianie_c_powrot_za=6"
			cls
			mode 80,7

			start notepad

			:menu_uruchamianie_c_czekanie
				cls
				set /a "menu_uruchamianie_c_powrot_za=%menu_uruchamianie_c_powrot_za%-1"

				echo.
				echo                              (c) Jakub Szczepa 2023
				echo.

				echo    Notatnik zostal uruchomiony.
				echo.
				echo    Powrot do poprzedniego menu za %menu_uruchamianie_c_powrot_za%...

				if "%menu_uruchamianie_c_powrot_za%" gtr "1" (
					timeout 1 >nul
					goto menu_uruchamianie_c_czekanie
				)
			
			timeout 1 >nul
			goto 6_kat_glowna_idz
			
			
		:menu_uruchamianie_d
			set "menu_uruchamianie="
			set "menu_uruchamianie_d_powrot_za=4"
			cls
			mode 80,7

			taskkill /im notepad.exe

			:menu_uruchamianie_d_czekanie
				cls
				set /a "menu_uruchamianie_d_powrot_za=%menu_uruchamianie_d_powrot_za%-1"

				echo.
				echo                              (c) Jakub Szczepa 2023
				echo.

				echo    Notatnik zostal wylaczony.
				echo.
				echo    Powrot do poprzedniego menu za %menu_uruchamianie_d_powrot_za%...

				if "%menu_uruchamianie_d_powrot_za%" gtr "1" (
					timeout 1 >nul
					goto menu_uruchamianie_d_czekanie
				)
			
			timeout 1 >nul
			goto 6_kat_glowna_idz


		:menu_uruchamianie_e
			set "menu_uruchamianie="
			set "menu_uruchamianie_e_powrot_za=10"
			set "menu_uruchamianie_e_choice=3"
			cls
			mode 80,9

			:menu_uruchamianie_e_czekanie
				cls
				
				if %menu_uruchamianie_e_choice% == 1 set "menu_uruchamianie_e_naglowek=Wylaczanie komputera..."
				if %menu_uruchamianie_e_choice% == 2 set "menu_uruchamianie_e_naglowek=Wylaczanie komputera anulowane. Powracanie do poprzedniego menu..."
				if %menu_uruchamianie_e_choice% == 3 (
					if %menu_uruchamianie_e_powrot_za% == 0 set "menu_uruchamianie_e_naglowek=Wylaczanie komputera..."
					if %menu_uruchamianie_e_powrot_za% gtr 1 set "menu_uruchamianie_e_naglowek=Komputer zostanie wylaczony za %menu_uruchamianie_e_powrot_za% sekundy."
					if %menu_uruchamianie_e_powrot_za% gtr 4 set "menu_uruchamianie_e_naglowek=Komputer zostanie wylaczony za %menu_uruchamianie_e_powrot_za% sekund."
					if %menu_uruchamianie_e_powrot_za% == 1 set "menu_uruchamianie_e_naglowek=Komputer zostanie wylaczony za %menu_uruchamianie_e_powrot_za% sekunde."
				)

				echo.
				echo                              (c) Jakub Szczepa 2023
				echo.

				echo    %menu_uruchamianie_e_naglowek%
				echo.
				echo    Aby wylaczyc komputer teraz, wcisnij klawisz T.
				echo    Aby anulowac wylaczenie komputera, wcisnij klawisz N.

				if %menu_uruchamianie_e_choice% == 2 (
					echo ^> N
					timeout 3 >nul
					goto 6_kat_glowna_idz
				)
				if %menu_uruchamianie_e_choice% == 1 (
					echo ^> T
					timeout 3 >nul
					shutdown /l >nul
					exit
				)
				if %menu_uruchamianie_e_powrot_za% == 0 (
					timeout 3 >nul
					shutdown /l >nul
					exit
				)

				choice /c tnp /n /d p /t 1 /m " > "
				set "menu_uruchamianie_e_choice=%ERRORLEVEL%"
				set /a "menu_uruchamianie_e_powrot_za=%menu_uruchamianie_e_powrot_za%-1"
				goto menu_uruchamianie_e_czekanie


		:menu_uruchamianie_f
			set "menu_uruchamianie="
			set "menu_uruchamianie_f_powrot_za=10"
			set "menu_uruchamianie_f_choice=3"
			cls
			mode 80,9

			:menu_uruchamianie_f_czekanie
				cls
				
				if %menu_uruchamianie_f_choice% == 1 set "menu_uruchamianie_f_naglowek=Wylogowywanie..."
				if %menu_uruchamianie_f_choice% == 2 set "menu_uruchamianie_f_naglowek=Wylogowywanie anulowane. Powracanie do poprzedniego menu..."
				if %menu_uruchamianie_f_choice% == 3 (
					if %menu_uruchamianie_f_powrot_za% == 0 set "menu_uruchamianie_f_naglowek=Wylogowywanie..."
					if %menu_uruchamianie_f_powrot_za% gtr 1 set "menu_uruchamianie_f_naglowek=Zostaniesz wylogowany za %menu_uruchamianie_f_powrot_za% sekundy."
					if %menu_uruchamianie_f_powrot_za% gtr 4 set "menu_uruchamianie_f_naglowek=Zostaniesz wylogowany za %menu_uruchamianie_f_powrot_za% sekund."
					if %menu_uruchamianie_f_powrot_za% == 1 set "menu_uruchamianie_f_naglowek=Zostaniesz wylogowany za %menu_uruchamianie_f_powrot_za% sekunde."
				)

				echo.
				echo                              (c) Jakub Szczepa 2023
				echo.

				echo    %menu_uruchamianie_f_naglowek%
				echo.
				echo    Aby wylogowac sie teraz, wcisnij klawisz T.
				echo    Aby anulowac wylogowywanie, wcisnij klawisz N.

				if %menu_uruchamianie_f_choice% == 2 (
					echo ^> N
					timeout 3 >nul
					goto 6_kat_glowna_idz
				)
				if %menu_uruchamianie_f_choice% == 1 (
					echo ^> T
					timeout 3 >nul
					shutdown /l >nul
					exit
				)
				if %menu_uruchamianie_f_powrot_za% == 0 (
					timeout 3 >nul
					shutdown /l >nul
					exit
				)

				choice /c tnp /n /d p /t 1 /m " > "
				set "menu_uruchamianie_f_choice=%ERRORLEVEL%"
				set /a "menu_uruchamianie_f_powrot_za=%menu_uruchamianie_f_powrot_za%-1"
				goto menu_uruchamianie_f_czekanie



	:7_kat_glowna_blad
		set "naglowek_listy=Wprowadzono niepoprawna wartosc. Wybierz jedno z ponizszych pytan..."
		goto 7_kat_glowna
		
	:7_kat_glowna_idz
		if %menu_egzamin_status% == 2 goto menu_egzamin_wynik

		if %menu_egzamin_podana_odp% NEQ 0 (
			set "menu_egzamin_lista_pyt%menu_egzamin_podana_odp%_suffix=- podano odpowiedz %menu_egzamin_pytanie_akt_odp_literka%"
			set "menu_egzamin_podana_odp=0"
		)

		if %menu_egzamin_ilosc_odp% == 5 (
			if %menu_egzamin_wyniki% NEQ 2 (
				set "naglowek_listy=Udzielono odpowiedzi na wszystkie pytania."
				set "menu_egzamin_wyniki=0"
				goto 7_kat_glowna
			)
			if %menu_egzamin_wyniki% == 2 set "menu_egzamin_wyniki=1"
		)

		set "naglowek_listy=Wybierz jedno z ponizszych pytan i kliknij klawisz Enter..."
		goto 7_kat_glowna
		
	:7_kat_glowna
		cls
		if %menu_egzamin_ilosc_odp% NEQ 5 mode 80,13
		if %menu_egzamin_ilosc_odp% == 5 (
			if %menu_egzamin_wyniki% == 0 mode 80,13
			if %menu_egzamin_wyniki% == 1 mode 80,12
		)
		
		echo.
		echo                              (c) Jakub Szczepa 2023
		echo                              Menu glowne ^> Egzamin
		echo.

		echo    %naglowek_listy%
		echo     1. pytanie %menu_egzamin_lista_pyt1_suffix%
		echo     2. pytanie %menu_egzamin_lista_pyt2_suffix%
		echo     3. pytanie %menu_egzamin_lista_pyt3_suffix%
		echo     4. pytanie %menu_egzamin_lista_pyt4_suffix%
		echo     5. pytanie %menu_egzamin_lista_pyt5_suffix%

		if %menu_egzamin_ilosc_odp% == 5 (
			if %menu_egzamin_wyniki% NEQ 1 (
				echo.
				echo    Czy chcesz zakonczyc test i wyswietlic swoj wynik? ^(T - tak, N - nie^)
				choice /c TN /n /m " > "
				set "menu_egzamin_wyniki=!ERRORLEVEL!"

				if !menu_egzamin_wyniki! == 1 goto menu_egzamin_wynik
				if !menu_egzamin_wyniki! == 2 goto 7_kat_glowna_idz
			)
		)

		if %menu_egzamin_ilosc_odp% NEQ 5 echo    ...lub wybierz 0 oraz wcisnij klawisz Enter, aby zakonczyc test.
		echo    ...lub wcisnij klawisz Enter bez wpisywania czegokolwiek, aby wrocic.

		set "menu_egzamin="
		set /p "menu_egzamin=> "
		

		::Źródło pytań oraz obrazków: https://egzamin-informatyk.pl
		
		if "!menu_egzamin!"=="" goto kat_glowna
		if "!menu_egzamin!"=="0" goto menu_egzamin_wynik
		if "!menu_egzamin!"=="1" (
			set "menu_egzamin_pytanie_naglowek=Przedstawiony na nim kod zrodlowy ma za zadanie wyswietlic"
			set "menu_egzamin_pytanie_tekst_odp_A=A. kolejne liczby od 1 do 100"
			set "menu_egzamin_pytanie_tekst_odp_B=B. wylosowane liczby od 0 do 99"
			set "menu_egzamin_pytanie_tekst_odp_C=C. losowe liczby od 0 do 100, az nie zostanie wylosowana wartosc 0"
			set "menu_egzamin_pytanie_tekst_odp_D=D. wczytane z klawiatury liczby, az nie zostanie wczytana wartosc 0"
			if %menu_egzamin_pytanie_1_odp% == 0 set /a "menu_egzamin_ilosc_odp=%menu_egzamin_ilosc_odp%+1"
			goto menu_egzamin_pytanie
		)
		::odpowiedz C
		if "!menu_egzamin!"=="2" (
			set "menu_egzamin_pytanie_naglowek=Wskaz nazwe Systemu Zarzadzania Trescia, ktorego logo na nim przedstawiono."
			set "menu_egzamin_pytanie_tekst_odp_A=A. Joomla!" 
			set "menu_egzamin_pytanie_tekst_odp_B=B. WordPress"
			set "menu_egzamin_pytanie_tekst_odp_C=C. MediaWiki"
			set "menu_egzamin_pytanie_tekst_odp_D=D. Drupal"
			if %menu_egzamin_pytanie_2_odp% == 0 set /a "menu_egzamin_ilosc_odp=%menu_egzamin_ilosc_odp%+1"
			goto menu_egzamin_pytanie
		)
		::odpowiedz A
		if "!menu_egzamin!"=="3" (
			set "menu_egzamin_pytanie_naglowek=Przedstawione na nim polecenie MySQL ma za zadanie"
			set "menu_egzamin_pytanie_tekst_odp_A=A. Zmienic typ kolumny w tabeli ksiazki"
			set "menu_egzamin_pytanie_tekst_odp_B=B. Zmienic nazwe kolumny w tabeli ksiazki"
			set "menu_egzamin_pytanie_tekst_odp_C=C. Dodac do tabeli ksiazki kolumne tytul"
			set "menu_egzamin_pytanie_tekst_odp_D=D. Usunac kolumne tytul z tabeli ksiazki"
			if %menu_egzamin_pytanie_3_odp% == 0 set /a "menu_egzamin_ilosc_odp=%menu_egzamin_ilosc_odp%+1"
			goto menu_egzamin_pytanie
		)
		::odpowiedz A
		if "!menu_egzamin!"=="4" (
			set "menu_egzamin_pytanie_naglowek=Przedstawiona na nim funkcja rozdzka edytora grafiki rastrowej umozliwia"
			set "menu_egzamin_pytanie_tekst_odp_A=A. wybiorcze rozsmarowanie koloru za pomoca pedzla"
			set "menu_egzamin_pytanie_tekst_odp_B=B. odreczne zaznaczanie obszarow przez przeciaganie po nich kursora"
			set "menu_egzamin_pytanie_tekst_odp_C=C. zaznaczenie obszaru na podstawie koloru"
			set "menu_egzamin_pytanie_tekst_odp_D=D. pobranie wskazanego koloru i ustawienie go jako aktywny"
			if %menu_egzamin_pytanie_4_odp% == 0 set /a "menu_egzamin_ilosc_odp=%menu_egzamin_ilosc_odp%+1"
			goto menu_egzamin_pytanie
			
		)
		::odpowiedz C
		if "!menu_egzamin!"=="5" (
			set "menu_egzamin_pytanie_naglowek=Ile domen kolizyjnych wystepuje w sieci pokazanej na nim?"
			set "menu_egzamin_pytanie_tekst_odp_A=A. 1"
			set "menu_egzamin_pytanie_tekst_odp_B=B. 5"
			set "menu_egzamin_pytanie_tekst_odp_C=C. 6"
			set "menu_egzamin_pytanie_tekst_odp_D=D. 4"
			if %menu_egzamin_pytanie_5_odp% == 0 set /a "menu_egzamin_ilosc_odp=%menu_egzamin_ilosc_odp%+1"
			goto menu_egzamin_pytanie
			
		)
		::odpowiedz D

		set "menu_egzamin="
		goto 7_kat_glowna_blad


		:menu_egzamin_pytanie
			set "menu_egzamin_pytanie_powrot_za=6"
			set "menu_egzamin_pytanie_powrot_za_maks=%menu_egzamin_pytanie_powrot_za%"
			mode 80,12

			if %menu_egzamin_status% == 0 (
				for /f %%i in ('time /T') do set menu_egzamin_uruchomienie_czas=%%i
				set "menu_egzamin_status=1"
			)

			start %~dp0\pliki_skryptu\egzamin_obrazek_pytanie_%menu_egzamin%.jpg

			:menu_egzamin_pytanie_czekanie
				cls

				echo.
				echo                              (c) Jakub Szczepa 2023
				echo.

				echo    W osobnym oknie otworzono obrazek.

				if %menu_egzamin_pytanie_powrot_za% == %menu_egzamin_pytanie_powrot_za_maks% timeout 3 >nul

				echo    %menu_egzamin_pytanie_naglowek%
				echo     %menu_egzamin_pytanie_tekst_odp_A%
				echo     %menu_egzamin_pytanie_tekst_odp_B%
				echo     %menu_egzamin_pytanie_tekst_odp_C%
				echo     %menu_egzamin_pytanie_tekst_odp_D%
				echo.

				if %menu_egzamin_pytanie_powrot_za% == %menu_egzamin_pytanie_powrot_za_maks% (
					choice /c ABCD /n /m " > "
					set "menu_egzamin_pytanie_%menu_egzamin%_odp=!ERRORLEVEL!"
					set "menu_egzamin_pytanie_akt_odp=!ERRORLEVEL!"
					set "menu_egzamin_podana_odp=%menu_egzamin%"
				)
				if %menu_egzamin_pytanie_powrot_za% == %menu_egzamin_pytanie_powrot_za_maks% (
					if %menu_egzamin_pytanie_akt_odp% == 1 (
						set "menu_egzamin_pytanie_akt_odp_literka=A"
						set "menu_egzamin_pytanie_%menu_egzamin%_odp_literka=A"
					)
					if %menu_egzamin_pytanie_akt_odp% == 2 (
						set "menu_egzamin_pytanie_akt_odp_literka=B"
						set "menu_egzamin_pytanie_%menu_egzamin%_odp_literka=B"
					)
					if %menu_egzamin_pytanie_akt_odp% == 3 (
						set "menu_egzamin_pytanie_akt_odp_literka=C"
						set "menu_egzamin_pytanie_%menu_egzamin%_odp_literka=C"
					)
					if %menu_egzamin_pytanie_akt_odp% == 4 (
						set "menu_egzamin_pytanie_akt_odp_literka=D"
						set "menu_egzamin_pytanie_%menu_egzamin%_odp_literka=D"
					)
				)

				if %menu_egzamin_pytanie_powrot_za% lss %menu_egzamin_pytanie_powrot_za_maks% echo   Wybrano odpowiedz %menu_egzamin_pytanie_akt_odp_literka%. Powrot do menu wyboru pytan za %menu_egzamin_pytanie_powrot_za%...
				
				if %menu_egzamin_pytanie_powrot_za% == 0 (
					set ""
					goto 7_kat_glowna_idz
				)
				timeout 1 >nul

				set /a "menu_egzamin_pytanie_powrot_za=%menu_egzamin_pytanie_powrot_za%-1"
				goto menu_egzamin_pytanie_czekanie


		:menu_egzamin_wynik
		cls
		mode 80,23

		if %menu_egzamin_status% LSS 2 (
			set "menu_egzamin_status=2"
			for /f %%i in ('time /T') do set menu_egzamin_zakonczenie_czas=%%i
			set "menu_egzamin_wynik_poprawne_odp=0"

			if %menu_egzamin_pytanie_1_odp% NEQ 3 (
				if %menu_egzamin_pytanie_1_odp% == 0 set "menu_egzamin_wynik_teskst_pyt_1=- nie udzielono odpowiedzi"
				if %menu_egzamin_pytanie_1_odp% NEQ 0 set "menu_egzamin_wynik_teskst_pyt_1=- bledna odpowiedz (%menu_egzamin_pytanie_1_odp_literka%)"
			)
			if %menu_egzamin_pytanie_1_odp% == 3 (
				set /a "menu_egzamin_wynik_poprawne_odp=!menu_egzamin_wynik_poprawne_odp!+1"
				set "menu_egzamin_wynik_teskst_pyt_1=- poprawna odpowiedz (%menu_egzamin_pytanie_1_odp_literka%)"
			)

			if %menu_egzamin_pytanie_2_odp% NEQ 1 (
				if %menu_egzamin_pytanie_2_odp% == 0 set "menu_egzamin_wynik_teskst_pyt_2=- nie udzielono odpowiedzi"
				if %menu_egzamin_pytanie_2_odp% NEQ 0 set "menu_egzamin_wynik_teskst_pyt_2=- bledna odpowiedz (%menu_egzamin_pytanie_2_odp_literka%)"
			)
			if %menu_egzamin_pytanie_2_odp% == 1 (
				set /a "menu_egzamin_wynik_poprawne_odp=!menu_egzamin_wynik_poprawne_odp!+1"
				set "menu_egzamin_wynik_teskst_pyt_2=- poprawna odpowiedz (%menu_egzamin_pytanie_2_odp_literka%)"
			)

			if %menu_egzamin_pytanie_3_odp% NEQ 1 (
				if %menu_egzamin_pytanie_3_odp% == 0 set "menu_egzamin_wynik_teskst_pyt_3=- nie udzielono odpowiedzi"
				if %menu_egzamin_pytanie_3_odp% NEQ 0 set "menu_egzamin_wynik_teskst_pyt_3=- bledna odpowiedz (%menu_egzamin_pytanie_3_odp_literka%)"
			)
			if %menu_egzamin_pytanie_3_odp% == 1 (
				set /a "menu_egzamin_wynik_poprawne_odp=!menu_egzamin_wynik_poprawne_odp!+1"
				set "menu_egzamin_wynik_teskst_pyt_3=- poprawna odpowiedz (%menu_egzamin_pytanie_3_odp_literka%)"
			)

			if %menu_egzamin_pytanie_4_odp% NEQ 3 (
				if %menu_egzamin_pytanie_4_odp% == 0 set "menu_egzamin_wynik_teskst_pyt_4=- nie udzielono odpowiedzi"
				if %menu_egzamin_pytanie_4_odp% NEQ 0 set "menu_egzamin_wynik_teskst_pyt_4=- bledna odpowiedz (%menu_egzamin_pytanie_4_odp_literka%)"
			)
			if %menu_egzamin_pytanie_4_odp% == 3 (
				set /a "menu_egzamin_wynik_poprawne_odp=!menu_egzamin_wynik_poprawne_odp!+1"
				set "menu_egzamin_wynik_teskst_pyt_4=- poprawna odpowiedz (%menu_egzamin_pytanie_4_odp_literka%)"
			)

			if %menu_egzamin_pytanie_5_odp% NEQ 4 (
				if %menu_egzamin_pytanie_5_odp% == 0 set "menu_egzamin_wynik_teskst_pyt_5=- nie udzielono odpowiedzi"
				if %menu_egzamin_pytanie_5_odp% NEQ 0 set "menu_egzamin_wynik_teskst_pyt_5=- bledna odpowiedz (%menu_egzamin_pytanie_5_odp_literka%)"
			)
			if %menu_egzamin_pytanie_5_odp% == 4 (
				set /a "menu_egzamin_wynik_poprawne_odp=!menu_egzamin_wynik_poprawne_odp!+1"
				set "menu_egzamin_wynik_teskst_pyt_5=- poprawna odpowiedz (%menu_egzamin_pytanie_5_odp_literka%)"
			)

			set /a "menu_egzamin_wynik_niepoprawne_odp=%menu_egzamin_ilosc_odp%-!menu_egzamin_wynik_poprawne_odp!"
			set /a "menu_egzamin_ilosc_odp_nieudz=5-%menu_egzamin_ilosc_odp%"

			if %menu_egzamin_status% == 0 (
				set "menu_egzamin_uruchomienie_czas= Test nie zostal rozpoczety."
				set "menu_egzamin_zakonczenie_czas= Test nie zostal rozpoczety."
				set "menu_egzamin_wynik_poprawne_odp=0"
				set "menu_egzamin_wynik_niepoprawne_odp=0"
				set /a "menu_egzamin_ilosc_odp_nieudz=5-%menu_egzamin_ilosc_odp%"
			)
		)
		
		echo.
		echo                              (c) Jakub Szczepa 2023
		echo                          Menu glowne ^> Egzamin ^> Wyniki
		echo.

		echo    Ogolne informacje o egzaminie:
		echo     - uzytkownik rozwiazujacy: %username%
		echo     - czas rozpoczecia: %menu_egzamin_uruchomienie_czas%
		echo     - czas zakonczenia: %menu_egzamin_zakonczenie_czas%
		echo.

		echo    Ogolne informacje o odpowiedziach:
		echo     - prawidlowo udzielone: %menu_egzamin_wynik_poprawne_odp%
		echo     - nieprawidlowo udzielone: %menu_egzamin_wynik_niepoprawne_odp%
		echo     - nieudzielone: %menu_egzamin_ilosc_odp_nieudz%
		echo.

		echo    Szczegolowe informacje o odpowiedziach:
		echo     - pytanie 1. %menu_egzamin_wynik_teskst_pyt_1%
		echo     - pytanie 2. %menu_egzamin_wynik_teskst_pyt_2%
		echo     - pytanie 3. %menu_egzamin_wynik_teskst_pyt_3%
		echo     - pytanie 4. %menu_egzamin_wynik_teskst_pyt_4%
		echo     - pytanie 5. %menu_egzamin_wynik_teskst_pyt_5%

		echo.
		echo   Aby wrocic, wcisnij dowolny klawisz.

	pause >nul
	goto kat_glowna