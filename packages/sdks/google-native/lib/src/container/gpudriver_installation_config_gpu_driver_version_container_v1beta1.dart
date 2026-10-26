import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode for how the GPU driver is installed.
enum GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1 implements pulumi.PulumiEnum<String> {
  gpuDriverVersionUnspecified("GPU_DRIVER_VERSION_UNSPECIFIED"),
  installationDisabled("INSTALLATION_DISABLED"),
  default_("DEFAULT"),
  latest("LATEST");

  const GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1 fromValue(String value) {
    for (final item in GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1 value: $value');
  }
}
