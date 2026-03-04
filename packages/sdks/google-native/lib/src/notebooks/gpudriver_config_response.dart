// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GPU driver configuration
class GPUDriverConfigResponse {
  /// Optional. Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final pulumi.Input<String> customGpuDriverPath;

  /// Optional. Whether the end user authorizes Google Cloud to install GPU driver on this VM instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  final pulumi.Input<bool> enableGpuDriver;

  /// Creates a new [GPUDriverConfigResponse].
  /// [customGpuDriverPath] Optional. Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  /// [enableGpuDriver] Optional. Whether the end user authorizes Google Cloud to install GPU driver on this VM instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  GPUDriverConfigResponse({
    required this.customGpuDriverPath,
    required this.enableGpuDriver,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customGpuDriverPath': customGpuDriverPath,
      'enableGpuDriver': enableGpuDriver,
    };
  }

  factory GPUDriverConfigResponse.fromMap(Map<String, dynamic> map) {
    return GPUDriverConfigResponse(
      customGpuDriverPath: pulumi.Input.fromValue(
        map['customGpuDriverPath'] as String,
      ),
      enableGpuDriver: pulumi.Input.fromValue(map['enableGpuDriver'] as bool),
    );
  }
}
