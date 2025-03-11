Program 2stepcalculation
IMPLICIT none

INTEGER :: num1 ! Mevcutta kullanılan sayi
INTEGER :: num2 ! İşlemler esnasında istenen 2. sayı
CHARACTER(len=1) :: operation ! Yapılacak işlemi seçiyoruz
INTEGER :: equal
print *, "Bir sayı giriniz"
read (*,*) num1
print *, "Yapilacak islemi seciniz (+ - * / =)"
read (*,*) operation
print *, "Sayı giriniz"
read (*,*) num2

if (operation .eq. '+') then
    equal = num1 + num2
end if

if (operation .eq. '-') then
    equal = num1 - num2
end if


if (operation .eq. '*') then
    equal = num1 * num2
end if


if (operation .eq. '/') then
    equal = num1 / num2
end if


End Program 2stepcalculation