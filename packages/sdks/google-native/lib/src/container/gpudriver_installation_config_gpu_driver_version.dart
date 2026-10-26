import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode for how the GPU driver is installed.
enum GPUDriverInstallationConfigGpuDriverVersion implements pulumi.PulumiEnum<String> {
  gpuDriverVersionUnspecified("GPU_DRIVER_VERSION_UNSPECIFIED"),
  installationDisabled("INSTALLATION_DISABLED"),
  default_("DEFAULT"),
  latest("LATEST");

  const GPUDriverInstallationConfigGpuDriverVersion(this.wireValue);
  @override
  final String wireValue;

  static GPUDriverInstallationConfigGpuDriverVersion fromValue(String value) {
    for (final item in GPUDriverInstallationConfigGpuDriverVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GPUDriverInstallationConfigGpuDriverVersion value: $value');
  }
}
