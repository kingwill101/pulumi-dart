// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getBookmarkRelation.
class GetBookmarkRelationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The resource ID of the related resource
  final String relatedResourceId;
  /// The resource kind of the related resource
  final String relatedResourceKind;
  /// The name of the related resource
  final String relatedResourceName;
  /// The resource type of the related resource
  final String relatedResourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetBookmarkRelationResult].
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
  GetBookmarkRelationResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    required this.name,
    required this.relatedResourceId,
    required this.relatedResourceKind,
    required this.relatedResourceName,
    required this.relatedResourceType,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'name': name,
      'relatedResourceId': relatedResourceId,
      'relatedResourceKind': relatedResourceKind,
      'relatedResourceName': relatedResourceName,
      'relatedResourceType': relatedResourceType,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetBookmarkRelationResult.fromMap(Map<String, dynamic> map) {
    return GetBookmarkRelationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      relatedResourceId: map['relatedResourceId'] as String,
      relatedResourceKind: map['relatedResourceKind'] as String,
      relatedResourceName: map['relatedResourceName'] as String,
      relatedResourceType: map['relatedResourceType'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

