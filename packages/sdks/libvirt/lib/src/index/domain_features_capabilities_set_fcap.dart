// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesCapabilitiesSetFCap {
  /// Sets the state of the capability to wake from an alarm.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesCapabilitiesSetFCap].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSetFCap({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory DomainFeaturesCapabilitiesSetFCap.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSetFCap(
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
