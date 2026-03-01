// ignore_for_file: unused_element, unnecessary_cast


class FunctionAppIdentity {
  /// Specifies a list of user managed identity ids to be assigned. Required if `type` is `UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service.
  final String? principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service.
  final String? tenantId;
  /// Specifies the identity type of the Function App. Possible values are `SystemAssigned` (where Azure will generate a Service Principal for you), `UserAssigned` where you can specify the Service Principal IDs in the `identity_ids` field, and `SystemAssigned, UserAssigned` which assigns both a system managed identity as well as the specified user assigned identities.
  ///
  /// > **NOTE:** When `type` is set to `SystemAssigned`, The assigned `principal_id` and `tenant_id` can be retrieved after the Function App has been created. More details are available below.
  final String type;

  /// Creates a new [FunctionAppIdentity].
  /// [identityIds] Specifies a list of user managed identity ids to be assigned. Required if `type` is `UserAssigned`.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service.
  /// [type] Specifies the identity type of the Function App. Possible values are `SystemAssigned` (where Azure will generate a Service Principal for you), `UserAssigned` where you can specify the Service Principal IDs in the `identity_ids` field, and `SystemAssigned, UserAssigned` which assigns both a system managed identity as well as the specified user assigned identities.
  FunctionAppIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory FunctionAppIdentity.fromMap(Map<String, dynamic> map) {
    return FunctionAppIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

