// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Display Device options
class DisplayDeviceComputeV1 {
  /// Defines whether the instance has Display enabled.
  final pulumi.Input<bool>? enableDisplay;

  /// Creates a new [DisplayDeviceComputeV1].
  /// [enableDisplay] Defines whether the instance has Display enabled.
  const DisplayDeviceComputeV1({
    this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDisplay': ?enableDisplay,
    };
  }

  factory DisplayDeviceComputeV1.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceComputeV1(
      enableDisplay: (() { final guardedValue = map['enableDisplay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

