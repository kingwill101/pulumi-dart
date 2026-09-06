// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for the servers offering subPlan
class DefenderForServersGcpOfferingSubPlanResponse {
  /// The available sub plans
  final pulumi.Input<String?>? type;

  /// Creates a new [DefenderForServersGcpOfferingSubPlanResponse].
  /// [type] The available sub plans
  const DefenderForServersGcpOfferingSubPlanResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersGcpOfferingSubPlanResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingSubPlanResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
