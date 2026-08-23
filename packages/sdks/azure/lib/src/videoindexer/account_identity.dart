// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountIdentity {
  /// Specifies a list of user managed identity ids to be assigned. Required if `type` is `UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? tenantId;
  /// Specifies the identity type of the Video Indexer Account. Possible values are `SystemAssigned` (where Azure will generate a Service Principal for you), `UserAssigned` where you can specify the Service Principal IDs in the `identityIds` field, and `SystemAssigned, UserAssigned` which assigns both a system managed identity as well as the specified user assigned identities.
  final pulumi.Input<String> type;

  /// Creates a new [AccountIdentity].
  /// [identityIds] Specifies a list of user managed identity ids to be assigned. Required if `type` is `UserAssigned`.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Specifies the identity type of the Video Indexer Account. Possible values are `SystemAssigned` (where Azure will generate a Service Principal for you), `UserAssigned` where you can specify the Service Principal IDs in the `identityIds` field, and `SystemAssigned, UserAssigned` which assigns both a system managed identity as well as the specified user assigned identities.
  const AccountIdentity({
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

  factory AccountIdentity.fromMap(Map<String, dynamic> map) {
    return AccountIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
