// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_iam_v1_policy_response.dart';

/// Represents the action responsible for access control list management operations.
class GoogleCloudContentwarehouseV1AccessControlActionResponse {
  /// Identifies the type of operation.
  final pulumi.Input<String> operationType;
  /// Represents the new policy from which bindings are added, removed or replaced based on the type of the operation. the policy is limited to a few 10s of KB.
  final pulumi.Input<GoogleIamV1PolicyResponse> policy;

  /// Creates a new [GoogleCloudContentwarehouseV1AccessControlActionResponse].
  /// [operationType] Identifies the type of operation.
  /// [policy] Represents the new policy from which bindings are added, removed or replaced based on the type of the operation. the policy is limited to a few 10s of KB.
  GoogleCloudContentwarehouseV1AccessControlActionResponse({
    required this.operationType,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationType': operationType,
      'policy': pulumi.Input.mapInputValue<GoogleIamV1PolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContentwarehouseV1AccessControlActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1AccessControlActionResponse(
      operationType: pulumi.Input.fromValue(map['operationType'] as String),
      policy: pulumi.Input.fromValue(GoogleIamV1PolicyResponse.fromMap((map['policy']! as Map).cast<String, dynamic>())),
    );
  }
}

