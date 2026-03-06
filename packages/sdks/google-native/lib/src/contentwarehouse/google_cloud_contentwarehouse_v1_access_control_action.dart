// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_access_control_action_operation_type.dart';
import 'google_iam_v1_policy.dart';

/// Represents the action responsible for access control list management operations.
class GoogleCloudContentwarehouseV1AccessControlAction {
  /// Identifies the type of operation.
  final pulumi.Input<GoogleCloudContentwarehouseV1AccessControlActionOperationType>? operationType;
  /// Represents the new policy from which bindings are added, removed or replaced based on the type of the operation. the policy is limited to a few 10s of KB.
  final pulumi.Input<GoogleIamV1Policy>? policy;

  /// Creates a new [GoogleCloudContentwarehouseV1AccessControlAction].
  /// [operationType] Identifies the type of operation.
  /// [policy] Represents the new policy from which bindings are added, removed or replaced based on the type of the operation. the policy is limited to a few 10s of KB.
  const GoogleCloudContentwarehouseV1AccessControlAction({
    this.operationType,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContentwarehouseV1AccessControlActionOperationType, String>(operationType, (value) => value.wireValue),
      'policy': ?pulumi.Input.mapOptionalInputValue<GoogleIamV1Policy, Map<String, dynamic>>(policy, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContentwarehouseV1AccessControlAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1AccessControlAction(
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudContentwarehouseV1AccessControlActionOperationType.fromValue(guardedValue as String)); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleIamV1Policy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

