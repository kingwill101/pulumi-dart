// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesCapabilitiesIpcLock {
  /// Sets the state of the capability to wake from an alarm.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesCapabilitiesIpcLock].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesIpcLock({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesIpcLock.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesIpcLock(
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

