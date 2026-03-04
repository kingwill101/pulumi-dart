// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainFeaturesCapabilitiesSysTtyCnofig {
  /// Sets the state of the capability to wake from an alarm.
  final pulumi.Input<String>? state;

  /// Creates a new [DomainFeaturesCapabilitiesSysTtyCnofig].
  /// [state] Sets the state of the capability to wake from an alarm.
  DomainFeaturesCapabilitiesSysTtyCnofig({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory DomainFeaturesCapabilitiesSysTtyCnofig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainFeaturesCapabilitiesSysTtyCnofig(
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
