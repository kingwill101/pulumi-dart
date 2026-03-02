// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandardIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Standard.
  ///
  /// > **Note:** When `type` is set to `SystemAssigned`, The assigned `principal_id` and `tenant_id` can be retrieved after the Logic App has been created. More details are available below.
  ///
  /// > **Note:** The `identity_ids` is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Logic App Standard. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned` (to enable both).
  final pulumi.Input<String> type;

  /// Creates a new [StandardIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Standard.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Logic App Standard. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned` (to enable both).
  StandardIdentity({
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

  factory StandardIdentity.fromMap(Map<String, dynamic> map) {
    return StandardIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds'] as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

