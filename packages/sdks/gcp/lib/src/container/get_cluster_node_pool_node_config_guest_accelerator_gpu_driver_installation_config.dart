// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig {
  /// Mode for how the GPU driver is installed.
  final pulumi.Input<String> gpuDriverVersion;

  /// Creates a new [GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  const GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuDriverVersion': gpuDriverVersion,
    };
  }

  factory GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig(
      gpuDriverVersion: pulumi.Input.fromValue(map['gpuDriverVersion'] as String),
    );
  }
}

