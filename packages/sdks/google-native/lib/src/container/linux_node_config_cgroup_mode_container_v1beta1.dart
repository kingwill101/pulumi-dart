import 'package:pulumi/pulumi.dart' as pulumi;

/// cgroup_mode specifies the cgroup mode to be used on the node.
enum LinuxNodeConfigCgroupModeContainerV1beta1 implements pulumi.PulumiEnum<String> {
  cgroupModeUnspecified("CGROUP_MODE_UNSPECIFIED"),
  cgroupModeV1("CGROUP_MODE_V1"),
  cgroupModeV2("CGROUP_MODE_V2");

  const LinuxNodeConfigCgroupModeContainerV1beta1(this.wireValue);
  @override
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
