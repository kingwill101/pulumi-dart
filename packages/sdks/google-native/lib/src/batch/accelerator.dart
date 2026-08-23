// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Accelerator describes Compute Engine accelerators to be attached to the VM.
class Accelerator {
  /// The number of accelerators of this type.
  final pulumi.Input<String>? count;
  /// Optional. The NVIDIA GPU driver version that should be installed for this type. You can define the specific driver version such as "470.103.01", following the driver version requirements in https://cloud.google.com/compute/docs/gpus/install-drivers-gpu#minimum-driver. Batch will install the specific accelerator driver if qualified.
  final pulumi.Input<String>? driverVersion;
  /// Deprecated: please use instances[0].install_gpu_drivers instead.
  final pulumi.Input<bool>? installGpuDrivers;
  /// The accelerator type. For example, "nvidia-tesla-t4". See `gcloud compute accelerator-types list`.
  final pulumi.Input<String>? type;

  /// Creates a new [Accelerator].
  /// [count] The number of accelerators of this type.
  /// [driverVersion] Optional. The NVIDIA GPU driver version that should be installed for this type. You can define the specific driver version such as "470.103.01", following the driver version requirements in https://cloud.google.com/compute/docs/gpus/install-drivers-gpu#minimum-driver. Batch will install the specific accelerator driver if qualified.
  /// [installGpuDrivers] Deprecated: please use instances[0].install_gpu_drivers instead.
  /// [type] The accelerator type. For example, "nvidia-tesla-t4". See `gcloud compute accelerator-types list`.
  const Accelerator({
    this.count,
    this.driverVersion,
    this.installGpuDrivers,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'driverVersion': ?driverVersion,
      'installGpuDrivers': ?installGpuDrivers,
      'type': ?type,
    };
  }

  factory Accelerator.fromMap(Map<String, dynamic> map) {
    return Accelerator(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driverVersion: (() { final guardedValue = map['driverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      installGpuDrivers: (() { final guardedValue = map['installGpuDrivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
