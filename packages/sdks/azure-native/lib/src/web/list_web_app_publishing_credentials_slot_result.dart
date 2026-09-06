// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by listWebAppPublishingCredentialsSlot.
class ListWebAppPublishingCredentialsSlotResult {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// Password used for publishing.
  final String? publishingPassword;
  /// Password hash used for publishing.
  final String? publishingPasswordHash;
  /// Password hash salt used for publishing.
  final String? publishingPasswordHashSalt;
  /// Username used for publishing.
  final String? publishingUserName;
  /// Url of SCM site.
  final String? scmUri;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [ListWebAppPublishingCredentialsSlotResult].
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [publishingPassword] Password used for publishing.
  /// [publishingPasswordHash] Password hash used for publishing.
  /// [publishingPasswordHashSalt] Password hash salt used for publishing.
  /// [publishingUserName] Username used for publishing.
  /// [scmUri] Url of SCM site.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const ListWebAppPublishingCredentialsSlotResult({
    this.id,
    this.kind,
    this.name,
    this.publishingPassword,
    this.publishingPasswordHash,
    this.publishingPasswordHashSalt,
    this.publishingUserName,
    this.scmUri,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'publishingPassword': ?publishingPassword,
      'publishingPasswordHash': ?publishingPasswordHash,
      'publishingPasswordHashSalt': ?publishingPasswordHashSalt,
      'publishingUserName': ?publishingUserName,
      'scmUri': ?scmUri,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory ListWebAppPublishingCredentialsSlotResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppPublishingCredentialsSlotResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishingPassword: (() { final guardedValue = map['publishingPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishingPasswordHash: (() { final guardedValue = map['publishingPasswordHash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishingPasswordHashSalt: (() { final guardedValue = map['publishingPasswordHashSalt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishingUserName: (() { final guardedValue = map['publishingUserName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scmUri: (() { final guardedValue = map['scmUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
