// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Microsoft SQL Server.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Microsoft SQL Server.
  final pulumi.Input<String> principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Microsoft SQL Server.
  final pulumi.Input<String> tenantId;
  /// The type of Managed Service Identity that is configured on this Microsoft SQL Server.
  final pulumi.Input<String> type;

  /// Creates a new [GetServerIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Microsoft SQL Server.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Microsoft SQL Server.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Microsoft SQL Server.
  /// [type] The type of Managed Service Identity that is configured on this Microsoft SQL Server.
  const GetServerIdentity({
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

  factory GetServerIdentity.fromMap(Map<String, dynamic> map) {
    return GetServerIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

