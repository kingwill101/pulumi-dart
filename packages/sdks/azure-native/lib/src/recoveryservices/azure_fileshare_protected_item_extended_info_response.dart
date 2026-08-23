// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information about Azure File Share backup item.
class AzureFileshareProtectedItemExtendedInfoResponse {
  /// The oldest backup copy available for this item in the service.
  final pulumi.Input<String>? oldestRecoveryPoint;
  /// Indicates consistency of policy object and policy applied to this backup item.
  final pulumi.Input<String>? policyState;
  /// Number of available backup copies associated with this backup item.
  final pulumi.Input<int>? recoveryPointCount;
  /// Indicates the state of this resource. Possible values are from enum ResourceState {Invalid, Active, SoftDeleted, Deleted}
  final pulumi.Input<String> resourceState;
  /// The resource state sync time for this backup item.
  final pulumi.Input<String> resourceStateSyncTime;

  /// Creates a new [AzureFileshareProtectedItemExtendedInfoResponse].
  /// [oldestRecoveryPoint] The oldest backup copy available for this item in the service.
  /// [policyState] Indicates consistency of policy object and policy applied to this backup item.
  /// [recoveryPointCount] Number of available backup copies associated with this backup item.
  /// [resourceState] Indicates the state of this resource. Possible values are from enum ResourceState {Invalid, Active, SoftDeleted, Deleted}
  /// [resourceStateSyncTime] The resource state sync time for this backup item.
  const AzureFileshareProtectedItemExtendedInfoResponse({
    this.oldestRecoveryPoint,
    this.policyState,
    this.recoveryPointCount,
    required this.resourceState,
    required this.resourceStateSyncTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oldestRecoveryPoint': ?oldestRecoveryPoint,
      'policyState': ?policyState,
      'recoveryPointCount': ?recoveryPointCount,
      'resourceState': resourceState,
      'resourceStateSyncTime': resourceStateSyncTime,
    };
  }

  factory AzureFileshareProtectedItemExtendedInfoResponse.fromMap(Map<String, dynamic> map) {
    return AzureFileshareProtectedItemExtendedInfoResponse(
      oldestRecoveryPoint: (() { final guardedValue = map['oldestRecoveryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyState: (() { final guardedValue = map['policyState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointCount: (() { final guardedValue = map['recoveryPointCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceState: pulumi.Input.fromValue(map['resourceState'] as String),
      resourceStateSyncTime: pulumi.Input.fromValue(map['resourceStateSyncTime'] as String),
    );
  }
}
