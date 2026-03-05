// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GPU driver configuration
class GPUDriverConfig {
  /// Optional. Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final pulumi.Input<String>? customGpuDriverPath;
  /// Optional. Whether the end user authorizes Google Cloud to install GPU driver on this VM instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  final pulumi.Input<bool>? enableGpuDriver;

  /// Creates a new [GPUDriverConfig].
  /// [customGpuDriverPath] Optional. Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  /// [enableGpuDriver] Optional. Whether the end user authorizes Google Cloud to install GPU driver on this VM instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  GPUDriverConfig({
    this.customGpuDriverPath,
    this.enableGpuDriver,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customGpuDriverPath': ?customGpuDriverPath,
      'enableGpuDriver': ?enableGpuDriver,
    };
  }

  factory GPUDriverConfig.fromMap(Map<String, dynamic> map) {
    return GPUDriverConfig(
      customGpuDriverPath: (() { final guardedValue = map['customGpuDriverPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableGpuDriver: (() { final guardedValue = map['enableGpuDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

