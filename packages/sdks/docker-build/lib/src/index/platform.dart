enum Platform {
  valueDarwin386("darwin/386"),
  valueDarwinAmd64("darwin/amd64"),
  valueDarwinArm("darwin/arm"),
  valueDarwinArm64("darwin/arm64"),
  valueDragonflyAmd64("dragonfly/amd64"),
  valueFreebsd386("freebsd/386"),
  valueFreebsdAmd64("freebsd/amd64"),
  valueFreebsdArm("freebsd/arm"),
  valueLinux386("linux/386"),
  valueLinuxAmd64("linux/amd64"),
  valueLinuxArm("linux/arm"),
  valueLinuxArm64("linux/arm64"),
  valueLinuxMips64("linux/mips64"),
  valueLinuxMips64le("linux/mips64le"),
  valueLinuxPpc64le("linux/ppc64le"),
  valueLinuxRiscv64("linux/riscv64"),
  valueLinuxS390x("linux/s390x"),
  valueNetbsd386("netbsd/386"),
  valueNetbsdAmd64("netbsd/amd64"),
  valueNetbsdArm("netbsd/arm"),
  valueOpenbsd386("openbsd/386"),
  valueOpenbsdAmd64("openbsd/amd64"),
  valueOpenbsdArm("openbsd/arm"),
  valuePlan9386("plan9/386"),
  valuePlan9Amd64("plan9/amd64"),
  valueSolarisAmd64("solaris/amd64"),
  valueWindows386("windows/386"),
  valueWindowsAmd64("windows/amd64");

  const Platform(this.wireValue);
  final String wireValue;

  static Platform fromValue(String value) {
    for (final item in Platform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Platform value: $value');
  }
}
