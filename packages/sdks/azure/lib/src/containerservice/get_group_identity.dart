// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Container Group.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Container Group.
  final pulumi.Input<String> principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Container Group.
  final pulumi.Input<String> tenantId;
  /// Type of Managed Service Identity configured on this Container Group.
  final pulumi.Input<String> type;

  /// Creates a new [GetGroupIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Container Group.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Container Group.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Container Group.
  /// [type] Type of Managed Service Identity configured on this Container Group.
  const GetGroupIdentity({
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

  factory GetGroupIdentity.fromMap(Map<String, dynamic> map) {
    return GetGroupIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

