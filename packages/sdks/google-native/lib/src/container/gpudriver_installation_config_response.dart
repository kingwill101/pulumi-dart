// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GPUDriverInstallationConfig specifies the version of GPU driver to be auto installed.
class GPUDriverInstallationConfigResponse {
  /// Mode for how the GPU driver is installed.
  final pulumi.Input<String> gpuDriverVersion;

  /// Creates a new [GPUDriverInstallationConfigResponse].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  const GPUDriverInstallationConfigResponse({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuDriverVersion': gpuDriverVersion,
    };
  }

  factory GPUDriverInstallationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GPUDriverInstallationConfigResponse(
      gpuDriverVersion: pulumi.Input.fromValue(map['gpuDriverVersion'] as String),
    );
  }
}
