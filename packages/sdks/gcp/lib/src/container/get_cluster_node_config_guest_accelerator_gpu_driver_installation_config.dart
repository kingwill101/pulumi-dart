// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig {
  /// Mode for how the GPU driver is installed.
  final pulumi.Input<String> gpuDriverVersion;

  /// Creates a new [GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  const GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuDriverVersion': gpuDriverVersion,
    };
  }

  factory GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig(
      gpuDriverVersion: pulumi.Input.fromValue(map['gpuDriverVersion'] as String),
    );
  }
}

