// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesCapabilitiesAuditControl {
  /// Sets the state of the capability to wake from an alarm.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesCapabilitiesAuditControl].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesAuditControl({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesAuditControl.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesAuditControl(
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

