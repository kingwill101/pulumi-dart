// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesCapabilitiesDacOverride {
  /// Sets the state of the capability to wake from an alarm.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesCapabilitiesDacOverride].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesDacOverride({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesDacOverride.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesDacOverride(
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

