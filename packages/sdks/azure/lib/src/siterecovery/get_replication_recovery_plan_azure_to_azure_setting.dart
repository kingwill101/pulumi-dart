// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReplicationRecoveryPlanAzureToAzureSetting {
  final pulumi.Input<String> primaryEdgeZone;
  final pulumi.Input<String> primaryZone;
  final pulumi.Input<String> recoveryEdgeZone;
  final pulumi.Input<String> recoveryZone;

  /// Creates a new [GetReplicationRecoveryPlanAzureToAzureSetting].
  /// [primaryEdgeZone] Required.
  /// [primaryZone] Required.
  /// [recoveryEdgeZone] Required.
  /// [recoveryZone] Required.
  const GetReplicationRecoveryPlanAzureToAzureSetting({
    required this.primaryEdgeZone,
    required this.primaryZone,
    required this.recoveryEdgeZone,
    required this.recoveryZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryEdgeZone': primaryEdgeZone,
      'primaryZone': primaryZone,
      'recoveryEdgeZone': recoveryEdgeZone,
      'recoveryZone': recoveryZone,
    };
  }

  factory GetReplicationRecoveryPlanAzureToAzureSetting.fromMap(Map<String, dynamic> map) {
    return GetReplicationRecoveryPlanAzureToAzureSetting(
      primaryEdgeZone: pulumi.Input.fromValue(map['primaryEdgeZone'] as String),
      primaryZone: pulumi.Input.fromValue(map['primaryZone'] as String),
      recoveryEdgeZone: pulumi.Input.fromValue(map['recoveryEdgeZone'] as String),
      recoveryZone: pulumi.Input.fromValue(map['recoveryZone'] as String),
    );
  }
}
