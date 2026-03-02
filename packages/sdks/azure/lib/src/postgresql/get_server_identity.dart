// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerIdentity {
  /// The ID of the System Managed Service Principal assigned to the PostgreSQL Server.
  final pulumi.Input<String> principalId;
  /// The ID of the Tenant of the System Managed Service Principal assigned to the PostgreSQL Server.
  final pulumi.Input<String> tenantId;
  /// The identity type of the Managed Identity assigned to the PostgreSQL Server.
  final pulumi.Input<String> type;

  /// Creates a new [GetServerIdentity].
  /// [principalId] The ID of the System Managed Service Principal assigned to the PostgreSQL Server.
  /// [tenantId] The ID of the Tenant of the System Managed Service Principal assigned to the PostgreSQL Server.
  /// [type] The identity type of the Managed Identity assigned to the PostgreSQL Server.
  GetServerIdentity({
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetServerIdentity.fromMap(Map<String, dynamic> map) {
    return GetServerIdentity(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

