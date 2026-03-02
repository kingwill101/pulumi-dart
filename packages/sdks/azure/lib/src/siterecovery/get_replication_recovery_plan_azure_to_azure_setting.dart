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
  GetReplicationRecoveryPlanAzureToAzureSetting({
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
      primaryEdgeZone: (map['primaryEdgeZone'] as String).input(),
      primaryZone: (map['primaryZone'] as String).input(),
      recoveryEdgeZone: (map['recoveryEdgeZone'] as String).input(),
      recoveryZone: (map['recoveryZone'] as String).input(),
    );
  }
}

