// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getIncidentRelation.
class GetIncidentRelationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The resource ID of the related resource
  final String? relatedResourceId;
  /// The resource kind of the related resource
  final String? relatedResourceKind;
  /// The name of the related resource
  final String? relatedResourceName;
  /// The resource type of the related resource
  final String? relatedResourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetIncidentRelationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [relatedResourceId] The resource ID of the related resource
  /// [relatedResourceKind] The resource kind of the related resource
  /// [relatedResourceName] The name of the related resource
  /// [relatedResourceType] The resource type of the related resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetIncidentRelationResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.relatedResourceId,
    this.relatedResourceKind,
    this.relatedResourceName,
    this.relatedResourceType,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'relatedResourceId': ?relatedResourceId,
      'relatedResourceKind': ?relatedResourceKind,
      'relatedResourceName': ?relatedResourceName,
      'relatedResourceType': ?relatedResourceType,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetIncidentRelationResult.fromMap(Map<String, dynamic> map) {
    return GetIncidentRelationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relatedResourceId: (() { final guardedValue = map['relatedResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relatedResourceKind: (() { final guardedValue = map['relatedResourceKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relatedResourceName: (() { final guardedValue = map['relatedResourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relatedResourceType: (() { final guardedValue = map['relatedResourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
