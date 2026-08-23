// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedInstanceIdentity {
  /// A list of User Assigned Managed Identity IDs assigned with the Identity of this SQL Managed Instance.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  final pulumi.Input<String> principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  final pulumi.Input<String> tenantId;
  /// The identity type of the SQL Managed Instance.
  final pulumi.Input<String> type;

  /// Creates a new [GetManagedInstanceIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs assigned with the Identity of this SQL Managed Instance.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  /// [type] The identity type of the SQL Managed Instance.
  const GetManagedInstanceIdentity({
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

  factory GetManagedInstanceIdentity.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
