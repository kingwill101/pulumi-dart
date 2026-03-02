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
  GetAppIdentity({
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
      identityIds: ((map['identityIds'] as List).cast<String>()).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

