// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig {
  /// Mode for how the GPU driver is installed.
  /// Accepted values are:
  /// * `"GPU_DRIVER_VERSION_UNSPECIFIED"`: Default value is to install the "Default" GPU driver. Before GKE `1.30.1-gke.1156000`, the default value is to not install any GPU driver.
  /// * `"INSTALLATION_DISABLED"`: Disable GPU driver auto installation and needs manual installation.
  /// * `"DEFAULT"`: "Default" GPU driver in COS and Ubuntu.
  /// * `"LATEST"`: "Latest" GPU driver in COS.
  final pulumi.Input<String> gpuDriverVersion;

  /// Creates a new [ClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  const ClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuDriverVersion': gpuDriverVersion,
    };
  }

  factory ClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig(
      gpuDriverVersion: pulumi.Input.fromValue(map['gpuDriverVersion'] as String),
    );
  }
}
