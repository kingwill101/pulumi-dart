// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesCapabilitiesSysResource {
  /// Sets the state of the capability to wake from an alarm.
  final pulumi.Input<String?>? state;

  /// Creates a new [DomainFeaturesCapabilitiesSysResource].
  /// [state] Sets the state of the capability to wake from an alarm.
  const DomainFeaturesCapabilitiesSysResource({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory DomainFeaturesCapabilitiesSysResource.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilitiesSysResource(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
