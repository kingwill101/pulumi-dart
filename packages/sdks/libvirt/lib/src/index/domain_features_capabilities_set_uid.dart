// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesCapabilitiesSetUid {
  /// Sets the state of the capability to wake from an alarm.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesCapabilitiesSetUid].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSetUid({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSetUid.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSetUid(
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

