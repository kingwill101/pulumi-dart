// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyAssignmentIdentity {
  /// A `identity_ids` block as defined below.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID of the Policy Assignment for this Resource.
  final pulumi.Input<String> principalId;
  /// The Tenant ID of the Policy Assignment for this Resource.
  final pulumi.Input<String> tenantId;
  /// The Type of Managed Identity which is added to this Policy Assignment.
  final pulumi.Input<String> type;

  /// Creates a new [GetPolicyAssignmentIdentity].
  /// [identityIds] A `identity_ids` block as defined below.
  /// [principalId] The Principal ID of the Policy Assignment for this Resource.
  /// [tenantId] The Tenant ID of the Policy Assignment for this Resource.
  /// [type] The Type of Managed Identity which is added to this Policy Assignment.
  const GetPolicyAssignmentIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetPolicyAssignmentIdentity.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

