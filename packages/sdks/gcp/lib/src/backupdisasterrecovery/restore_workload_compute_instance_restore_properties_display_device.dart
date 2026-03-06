// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice {
  /// Optional. Enables display for the Compute Engine VM.
  final pulumi.Input<bool>? enableDisplay;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice].
  /// [enableDisplay] Optional. Enables display for the Compute Engine VM.
  const RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice({
    this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDisplay': ?enableDisplay,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice(
      enableDisplay: (() { final guardedValue = map['enableDisplay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

