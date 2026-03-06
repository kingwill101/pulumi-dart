// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Dev Center.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Dev Center.
  final pulumi.Input<String> principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Dev Center.
  final pulumi.Input<String> tenantId;
  /// The type of Managed Service Identity that is configured on this Dev Center.
  final pulumi.Input<String> type;

  /// Creates a new [GetIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Dev Center.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Dev Center.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Dev Center.
  /// [type] The type of Managed Service Identity that is configured on this Dev Center.
  const GetIdentity({
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

  factory GetIdentity.fromMap(Map<String, dynamic> map) {
    return GetIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

