// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkspaceManagerGroup.
class GetWorkspaceManagerGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The description of the workspace manager group
  final String? description;
  /// The display name of the workspace manager group
  final String? displayName;
  /// Resource Etag.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The names of the workspace manager members participating in this group.
  final List<String>? memberResourceNames;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkspaceManagerGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of the workspace manager group
  /// [displayName] The display name of the workspace manager group
  /// [etag] Resource Etag.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [memberResourceNames] The names of the workspace manager members participating in this group.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkspaceManagerGroupResult({
    this.azureApiVersion,
    this.description,
    this.displayName,
    this.etag,
    this.id,
    this.memberResourceNames,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'id': ?id,
      'memberResourceNames': ?memberResourceNames,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetWorkspaceManagerGroupResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagerGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberResourceNames: (() { final guardedValue = map['memberResourceNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
