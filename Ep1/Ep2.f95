program hesap_makinesi
  implicit none
  integer :: equal, num2
  character(len=2) :: op

  ! Başlangıç değerini kullanıcıdan alıyoruz.
  print *, "Başlangıç değerini giriniz:"
  read (*,*) equal

  ! Sürekli işlem yapılabilmesi için sonsuz döngü oluşturuyoruz.
  do
      print *, "İşlem seçiniz (+, -, *, /) veya sonlandırmak için AC giriniz:"
      read (*,*) op

      ! Eğer kullanıcı AC girerse, döngüden çıkıyoruz.
      if (op .eq. "AC") then
          print *, "Hesap makinesi sıfırlandı. Program sonlandırılıyor."
          exit
      end if

      ! İşlem için ikinci sayıyı alıyoruz.
      print *, "Sayı giriniz:"
      read (*,*) num2

      ! Girilen operatöre göre hesaplama yapıyoruz.
      if (op .eq. "+") then
          equal = equal + num2
      else if (op .eq. "-") then
          equal = equal - num2
      else if (op .eq. "*") then
          equal = equal * num2
      else if (op .eq. "/") then
          if (num2 == 0) then
              print *, "Hata: Sıfıra bölme!"
              cycle  ! Bu işlemde bölme hatası varsa, bu döngü adımını atla.
          else
              equal = equal / num2
          end if
      else
          print *, "Geçersiz işlem operatörü!"
          cycle  ! Geçersiz operatörde, aşağıdaki sonucu yazdırmadan döngünün başına dön.
      end if

      ! Güncellenmiş sonucu ekrana yazdırıyoruz.
      print *, "Sonuç:", equal
  end do
end program hesap_makinesi
