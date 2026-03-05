// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GPUDriverInstallationConfig specifies the version of GPU driver to be auto installed.
class GPUDriverInstallationConfigResponseContainerV1beta1 {
  /// Mode for how the GPU driver is installed.
  final pulumi.Input<String> gpuDriverVersion;

  /// Creates a new [GPUDriverInstallationConfigResponseContainerV1beta1].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  GPUDriverInstallationConfigResponseContainerV1beta1({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuDriverVersion': gpuDriverVersion,
    };
  }

  factory GPUDriverInstallationConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GPUDriverInstallationConfigResponseContainerV1beta1(
      gpuDriverVersion: pulumi.Input.fromValue(map['gpuDriverVersion'] as String),
    );
  }
}

