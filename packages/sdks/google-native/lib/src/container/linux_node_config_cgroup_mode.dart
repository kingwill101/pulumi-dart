/// cgroup_mode specifies the cgroup mode to be used on the node.
enum LinuxNodeConfigCgroupMode {
  cgroupModeUnspecified("CGROUP_MODE_UNSPECIFIED"),
  cgroupModeV1("CGROUP_MODE_V1"),
  cgroupModeV2("CGROUP_MODE_V2");

  const LinuxNodeConfigCgroupMode(this.wireValue);
  final String wireValue;

  static LinuxNodeConfigCgroupMode fromValue(String value) {
    for (final item in LinuxNodeConfigCgroupMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxNodeConfigCgroupMode value: $value');
  }
}
