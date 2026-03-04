// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskTransient {
  /// Indicates if the transient disk device shares backing storage with other devices.
  final pulumi.Input<String>? shareBacking;

  /// Creates a new [DomainDevicesDiskTransient].
  /// [shareBacking] Indicates if the transient disk device shares backing storage with other devices.
  DomainDevicesDiskTransient({this.shareBacking});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'shareBacking': ?shareBacking};
  }

  factory DomainDevicesDiskTransient.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskTransient(
      shareBacking: (() {
        final guardedValue = map['shareBacking'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
