/// Type of package manager that can be used to install this package. If a system does not have the package manager, the package is not installed or removed no error message is returned. By default, or if you specify `ANY`, the agent attempts to install and remove this package using the default package manager. This is useful when creating a policy that applies to different types of systems. The default behavior is ANY.
enum PackageManager {
  managerUnspecified("MANAGER_UNSPECIFIED"),
  any("ANY"),
  apt("APT"),
  yum("YUM"),
  zypper("ZYPPER"),
  goo("GOO");

  const PackageManager(this.wireValue);
  final String wireValue;

  static PackageManager fromValue(String value) {
    for (final item in PackageManager.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageManager value: $value');
  }
}
