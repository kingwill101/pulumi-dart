// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppServiceIdentity {
  /// Specifies a list of user managed identity ids to be assigned. Required if `type` is `UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;

  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service.
  final pulumi.Input<String>? principalId;

  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service.
  final pulumi.Input<String>? tenantId;

  /// Specifies the identity type of the App Service. Possible values are `SystemAssigned` (where Azure will generate a Service Principal for you), `UserAssigned` where you can specify the Service Principal IDs in the `identity_ids` field, and `SystemAssigned, UserAssigned` which assigns both a system managed identity as well as the specified user assigned identities.
  ///
  /// &gt; **NOTE:** When `type` is set to `SystemAssigned`, The assigned `principal_id` and `tenant_id` can be retrieved after the App Service has been created. More details are available below.
  final pulumi.Input<String> type;

  /// Creates a new [AppServiceIdentity].
  /// [identityIds] Specifies a list of user managed identity ids to be assigned. Required if `type` is `UserAssigned`.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service.
  /// [type] Specifies the identity type of the App Service. Possible values are `SystemAssigned` (where Azure will generate a Service Principal for you), `UserAssigned` where you can specify the Service Principal IDs in the `identity_ids` field, and `SystemAssigned, UserAssigned` which assigns both a system managed identity as well as the specified user assigned identities.
  AppServiceIdentity({
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

  factory AppServiceIdentity.fromMap(Map<String, dynamic> map) {
    return AppServiceIdentity(
      identityIds: (() {
        final guardedValue = map['identityIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
