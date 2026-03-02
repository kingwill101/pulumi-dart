// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gpudriver_installation_config_gpu_driver_version_container_v1beta1.dart';

/// GPUDriverInstallationConfig specifies the version of GPU driver to be auto installed.
class GPUDriverInstallationConfigContainerV1beta1 {
  /// Mode for how the GPU driver is installed.
  final pulumi.Input<GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1>? gpuDriverVersion;

  /// Creates a new [GPUDriverInstallationConfigContainerV1beta1].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  GPUDriverInstallationConfigContainerV1beta1({
    this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuDriverVersion': ?pulumi.Input.mapOptionalInputValue<GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1, String>(gpuDriverVersion, (value) => value.value),
    };
  }

  factory GPUDriverInstallationConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GPUDriverInstallationConfigContainerV1beta1(
      gpuDriverVersion: map['gpuDriverVersion'] == null ? null : (GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1.fromValue(map['gpuDriverVersion']! as String)).input(),
    );
  }
}

