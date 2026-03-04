// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountIdentity {
  /// A list of User Assigned Managed Identity IDs assigned with the Identity of this Storage Account.
  final pulumi.Input<List<String>> identityIds;

  /// The Principal ID for the Service Principal associated with the Identity of this Storage Account.
  final pulumi.Input<String> principalId;

  /// The Tenant ID for the Service Principal associated with the Identity of this Storage Account.
  final pulumi.Input<String> tenantId;

  /// The type of Managed Service Identity that is configured on this Storage Account
  final pulumi.Input<String> type;

  /// Creates a new [GetAccountIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs assigned with the Identity of this Storage Account.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this Storage Account.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this Storage Account.
  /// [type] The type of Managed Service Identity that is configured on this Storage Account
  GetAccountIdentity({
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

  factory GetAccountIdentity.fromMap(Map<String, dynamic> map) {
    return GetAccountIdentity(
      identityIds: pulumi.Input.fromValue(
        (map['identityIds'] as List).cast<String>(),
      ),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
