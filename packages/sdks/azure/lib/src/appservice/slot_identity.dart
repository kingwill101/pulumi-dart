// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlotIdentity {
  /// Specifies a list of user managed identity ids to be assigned. Required if `type` is `UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service slot.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service slot.
  final pulumi.Input<String>? tenantId;
  /// Specifies the identity type of the App Service. Possible values are `SystemAssigned` (where Azure will generate a Service Principal for you), `UserAssigned` where you can specify the Service Principal IDs in the `identity_ids` field, and `SystemAssigned, UserAssigned` which assigns both a system managed identity as well as the specified user assigned identities.
  ///
  /// > **NOTE:** When `type` is set to `SystemAssigned`, The assigned `principal_id` and `tenant_id` can be retrieved after the App Service has been created. More details are available below.
  final pulumi.Input<String> type;

  /// Creates a new [SlotIdentity].
  /// [identityIds] Specifies a list of user managed identity ids to be assigned. Required if `type` is `UserAssigned`.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service slot.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service slot.
  /// [type] Specifies the identity type of the App Service. Possible values are `SystemAssigned` (where Azure will generate a Service Principal for you), `UserAssigned` where you can specify the Service Principal IDs in the `identity_ids` field, and `SystemAssigned, UserAssigned` which assigns both a system managed identity as well as the specified user assigned identities.
  SlotIdentity({
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

  factory SlotIdentity.fromMap(Map<String, dynamic> map) {
    return SlotIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds']! as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

