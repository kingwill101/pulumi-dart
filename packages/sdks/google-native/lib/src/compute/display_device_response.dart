// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Display Device options
class DisplayDeviceResponse {
  /// Defines whether the instance has Display enabled.
  final pulumi.Input<bool> enableDisplay;

  /// Creates a new [DisplayDeviceResponse].
  /// [enableDisplay] Defines whether the instance has Display enabled.
  DisplayDeviceResponse({
    required this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDisplay': enableDisplay,
    };
  }

  factory DisplayDeviceResponse.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceResponse(
      enableDisplay: pulumi.Input.fromValue(map['enableDisplay'] as bool),
    );
  }
}

