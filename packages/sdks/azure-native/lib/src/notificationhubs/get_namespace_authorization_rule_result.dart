// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNamespaceAuthorizationRule.
class GetNamespaceAuthorizationRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets a string that describes the claim type
  final String? claimType;
  /// Gets a string that describes the claim value
  final String? claimValue;
  /// Gets the created time for this rule
  final String? createdTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Gets a string that describes the authorization rule.
  final String? keyName;
  final String? location;
  /// Gets the last modified time for this rule
  final String? modifiedTime;
  /// The name of the resource
  final String? name;
  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  final String? primaryKey;
  /// Gets the revision number for the rule
  final int? revision;
  /// Gets or sets the rights associated with the rule.
  final List<String>? rights;
  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  final String? secondaryKey;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetNamespaceAuthorizationRuleResult({
    this.azureApiVersion,
    this.claimType,
    this.claimValue,
    this.createdTime,
    this.id,
    this.keyName,
    this.location,
    this.modifiedTime,
    this.name,
    this.primaryKey,
    this.revision,
    this.rights,
    this.secondaryKey,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'claimType': ?claimType,
      'claimValue': ?claimValue,
      'createdTime': ?createdTime,
      'id': ?id,
      'keyName': ?keyName,
      'location': ?location,
      'modifiedTime': ?modifiedTime,
      'name': ?name,
      'primaryKey': ?primaryKey,
      'revision': ?revision,
      'rights': ?rights,
      'secondaryKey': ?secondaryKey,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetNamespaceAuthorizationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceAuthorizationRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      claimType: (() { final guardedValue = map['claimType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      claimValue: (() { final guardedValue = map['claimValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedTime: (() { final guardedValue = map['modifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      rights: (() { final guardedValue = map['rights']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
