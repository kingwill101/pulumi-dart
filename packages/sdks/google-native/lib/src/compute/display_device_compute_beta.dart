// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Display Device options
class DisplayDeviceComputeBeta {
  /// Defines whether the instance has Display enabled.
  final pulumi.Input<bool>? enableDisplay;

  /// Creates a new [DisplayDeviceComputeBeta].
  /// [enableDisplay] Defines whether the instance has Display enabled.
  DisplayDeviceComputeBeta({
    this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDisplay': ?enableDisplay,
    };
  }

  factory DisplayDeviceComputeBeta.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceComputeBeta(
      enableDisplay: map['enableDisplay'] == null ? null : (map['enableDisplay'] as bool).input(),
    );
  }
}

