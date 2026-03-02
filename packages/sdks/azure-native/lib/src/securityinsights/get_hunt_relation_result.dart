// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getHuntRelation.
class GetHuntRelationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// List of labels relevant to this hunt
  final List<String>? labels;
  /// The name of the resource
  final String name;
  /// The id of the related resource
  final String relatedResourceId;
  /// The resource that the relation is related to
  final String relatedResourceKind;
  /// The name of the related resource
  final String relatedResourceName;
  /// The type of the hunt relation
  final String relationType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetHuntRelationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [labels] List of labels relevant to this hunt
  /// [name] The name of the resource
  /// [relatedResourceId] The id of the related resource
  /// [relatedResourceKind] The resource that the relation is related to
  /// [relatedResourceName] The name of the related resource
  /// [relationType] The type of the hunt relation
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetHuntRelationResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    this.labels,
    required this.name,
    required this.relatedResourceId,
    required this.relatedResourceKind,
    required this.relatedResourceName,
    required this.relationType,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'labels': ?labels,
      'name': name,
      'relatedResourceId': relatedResourceId,
      'relatedResourceKind': relatedResourceKind,
      'relatedResourceName': relatedResourceName,
      'relationType': relationType,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetHuntRelationResult.fromMap(Map<String, dynamic> map) {
    return GetHuntRelationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      labels: map['labels'] == null ? null : (map['labels']! as List).cast<String>(),
      name: map['name'] as String,
      relatedResourceId: map['relatedResourceId'] as String,
      relatedResourceKind: map['relatedResourceKind'] as String,
      relatedResourceName: map['relatedResourceName'] as String,
      relationType: map['relationType'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

