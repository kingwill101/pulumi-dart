// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Display Device options
class DisplayDevice {
  /// Defines whether the instance has Display enabled.
  final pulumi.Input<bool>? enableDisplay;

  /// Creates a new [DisplayDevice].
  /// [enableDisplay] Defines whether the instance has Display enabled.
  DisplayDevice({this.enableDisplay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableDisplay': ?enableDisplay};
  }

  factory DisplayDevice.fromMap(Map<String, dynamic> map) {
    return DisplayDevice(
      enableDisplay: (() {
        final guardedValue = map['enableDisplay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
