/// cgroup_mode specifies the cgroup mode to be used on the node.
enum LinuxNodeConfigCgroupModeContainerV1beta1 {
  cgroupModeUnspecified("CGROUP_MODE_UNSPECIFIED"),
  cgroupModeV1("CGROUP_MODE_V1"),
  cgroupModeV2("CGROUP_MODE_V2");

  const LinuxNodeConfigCgroupModeContainerV1beta1(this.wireValue);
  final String wireValue;

  static LinuxNodeConfigCgroupModeContainerV1beta1 fromValue(String value) {
    for (final item in LinuxNodeConfigCgroupModeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxNodeConfigCgroupModeContainerV1beta1 value: $value');
  }
}

