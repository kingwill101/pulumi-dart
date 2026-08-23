// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesCapabilitiesNetBroadcast {
  /// Sets the state of the capability to wake from an alarm.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesCapabilitiesNetBroadcast].
  /// [state] Sets the state of the capability to wake from an alarm.
  const DomainFeaturesCapabilitiesNetBroadcast({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesNetBroadcast.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesNetBroadcast(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
