// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCollectionRuleIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this Data Collection Rule. Currently, up to 1 identity is supported.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String> principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String> tenantId;
  /// cSpecifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are `SystemAssigned` and `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [GetDataCollectionRuleIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this Data Collection Rule. Currently, up to 1 identity is supported.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] cSpecifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are `SystemAssigned` and `UserAssigned`.
  const GetDataCollectionRuleIdentity({
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

  factory GetDataCollectionRuleIdentity.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
