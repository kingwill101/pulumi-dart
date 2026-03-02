// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesCapabilitiesNetRaw {
  /// Sets the state of the capability to wake from an alarm.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesCapabilitiesNetRaw].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesNetRaw({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesNetRaw.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesNetRaw(
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

