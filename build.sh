cd busybox
make
make install
cd ..
mkdir /tmp/busybox
cp -r busybox/_install/* /tmp/busybox
chmod +x VegaUX/init
cp VegaUX/* /tmp/busybox
cd /tmp/busybox
mkdir -p dev
mknod dev/console c 5 1
mknod dev/ram b 1 0
find -print0 | cpio -0oH newc | gzip -9 > /mnt/initramfs.cpio.gz

