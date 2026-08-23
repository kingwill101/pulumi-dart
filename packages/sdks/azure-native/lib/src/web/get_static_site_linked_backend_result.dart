// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getStaticSiteLinkedBackend.
class GetStaticSiteLinkedBackendResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource id of the backend linked to the static site
  final String? backendResourceId;
  /// The date and time on which the backend was linked to the static site.
  final String createdOn;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String name;
  /// The provisioning state of the linking process.
  final String provisioningState;
  /// The region of the backend linked to the static site
  final String? region;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetStaticSiteLinkedBackendResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backendResourceId] The resource id of the backend linked to the static site
  /// [createdOn] The date and time on which the backend was linked to the static site.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the linking process.
  /// [region] The region of the backend linked to the static site
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetStaticSiteLinkedBackendResult({
    required this.azureApiVersion,
    this.backendResourceId,
    required this.createdOn,
    required this.id,
    this.kind,
    required this.name,
    required this.provisioningState,
    this.region,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'backendResourceId': ?backendResourceId,
      'createdOn': createdOn,
      'id': id,
      'kind': ?kind,
      'name': name,
      'provisioningState': provisioningState,
      'region': ?region,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetStaticSiteLinkedBackendResult.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteLinkedBackendResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backendResourceId: (() { final guardedValue = map['backendResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: map['createdOn'] as String,
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
