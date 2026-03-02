// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Display Device options
class DisplayDeviceResponseComputeV1 {
  /// Defines whether the instance has Display enabled.
  final pulumi.Input<bool> enableDisplay;

  /// Creates a new [DisplayDeviceResponseComputeV1].
  /// [enableDisplay] Defines whether the instance has Display enabled.
  DisplayDeviceResponseComputeV1({
    required this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDisplay': enableDisplay,
    };
  }

  factory DisplayDeviceResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceResponseComputeV1(
      enableDisplay: (map['enableDisplay'] as bool).input(),
    );
  }
}

