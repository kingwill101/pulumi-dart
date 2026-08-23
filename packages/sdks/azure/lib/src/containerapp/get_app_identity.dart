// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppIdentity {
  /// A list of one or more Resource IDs for User Assigned Managed identities to assign.
  final pulumi.Input<List<String>> identityIds;
  final pulumi.Input<String> principalId;
  final pulumi.Input<String> tenantId;
  /// The type of managed identity to assign.
  final pulumi.Input<String> type;

  /// Creates a new [GetAppIdentity].
  /// [identityIds] A list of one or more Resource IDs for User Assigned Managed identities to assign.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] The type of managed identity to assign.
  const GetAppIdentity({
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

  factory GetAppIdentity.fromMap(Map<String, dynamic> map) {
    return GetAppIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
