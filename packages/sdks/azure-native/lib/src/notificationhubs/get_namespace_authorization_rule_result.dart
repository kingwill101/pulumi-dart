// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNamespaceAuthorizationRule.
class GetNamespaceAuthorizationRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets a string that describes the claim type
  final String claimType;
  /// Gets a string that describes the claim value
  final String claimValue;
  /// Gets the created time for this rule
  final String createdTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Gets a string that describes the authorization rule.
  final String keyName;
  final String? location;
  /// Gets the last modified time for this rule
  final String modifiedTime;
  /// The name of the resource
  final String name;
  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  final String? primaryKey;
  /// Gets the revision number for the rule
  final int revision;
  /// Gets or sets the rights associated with the rule.
  final List<String> rights;
  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  final String? secondaryKey;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetNamespaceAuthorizationRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [claimType] Gets a string that describes the claim type
  /// [claimValue] Gets a string that describes the claim value
  /// [createdTime] Gets the created time for this rule
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [keyName] Gets a string that describes the authorization rule.
  /// [location] Optional.
  /// [modifiedTime] Gets the last modified time for this rule
  /// [name] The name of the resource
  /// [primaryKey] Gets a base64-encoded 256-bit primary key for signing and
  /// [revision] Gets the revision number for the rule
  /// [rights] Gets or sets the rights associated with the rule.
  /// [secondaryKey] Gets a base64-encoded 256-bit primary key for signing and
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Optional.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetNamespaceAuthorizationRuleResult({
    required this.azureApiVersion,
    required this.claimType,
    required this.claimValue,
    required this.createdTime,
    required this.id,
    required this.keyName,
    this.location,
    required this.modifiedTime,
    required this.name,
    this.primaryKey,
    required this.revision,
    required this.rights,
    this.secondaryKey,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'claimType': claimType,
      'claimValue': claimValue,
      'createdTime': createdTime,
      'id': id,
      'keyName': keyName,
      'location': ?location,
      'modifiedTime': modifiedTime,
      'name': name,
      'primaryKey': ?primaryKey,
      'revision': revision,
      'rights': rights,
      'secondaryKey': ?secondaryKey,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNamespaceAuthorizationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceAuthorizationRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      claimType: map['claimType'] as String,
      claimValue: map['claimValue'] as String,
      createdTime: map['createdTime'] as String,
      id: map['id'] as String,
      keyName: map['keyName'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedTime: map['modifiedTime'] as String,
      name: map['name'] as String,
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revision: map['revision'] as int,
      rights: (map['rights'] as List).cast<String>(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

