// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for the servers offering subPlan
class DefenderForServersAwsOfferingSubPlanResponse {
  /// The available sub plans
  final pulumi.Input<String>? type;

  /// Creates a new [DefenderForServersAwsOfferingSubPlanResponse].
  /// [type] The available sub plans
  const DefenderForServersAwsOfferingSubPlanResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersAwsOfferingSubPlanResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingSubPlanResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
