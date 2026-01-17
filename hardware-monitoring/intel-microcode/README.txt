Primeiro você precisa instalar os pacotes "iucode-tool" e o "intel-microcode" para gerar
o intel-ucode.cpio e os arquivos em /lib/firmware/intel-ucode

Você pode carregar pelo initramfs ou diretamente pelo kernel:
a) initrd
/usr/share/mkinitrd/mkinitrd_command_generator.sh  --run /boot/vmlinuz-$VERSION -a '-P /boot/intel-ucode.cpio' | sh

b) kernel
é necessário habilitar uma opção no kernel e então recompilar
Drive Drivers -> Generic Driver Options e então adicionar o caminho do microcode
/lib/firmware/"intel-ucode/06-8c-01"

# Para verificar a versão do seu microcode
dmesg | grep -e 'microcode'
grep microcode /proc/cpuinfo
journalctl -k | grep microcode

echo 1 > /sys/devices/system/cpu/microcode/reload

# Para verificar a versão do microcode usado para seu processador
awk '
/family/ {f=sprintf("%02X",$4)}
/model/ && $2 != "name"{m=sprintf("%02X",$3)}
/stepping/{s=sprintf("%02X",$3)}
END{print f"-"m"-"s}
' /proc/cpuinfo
