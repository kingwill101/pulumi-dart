// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for the servers offering subPlan
class DefenderForServersGcpOfferingSubPlan {
  /// The available sub plans
  final pulumi.Input<String>? type;

  /// Creates a new [DefenderForServersGcpOfferingSubPlan].
  /// [type] The available sub plans
  DefenderForServersGcpOfferingSubPlan({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory DefenderForServersGcpOfferingSubPlan.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefenderForServersGcpOfferingSubPlan(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
