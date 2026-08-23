// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getStaticSiteUserProvidedFunctionAppForStaticSiteBuild.
class GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The date and time on which the function app was registered with the static site.
  final String createdOn;
  /// The region of the function app registered with the static site
  final String? functionAppRegion;
  /// The resource id of the function app registered with the static site
  final String? functionAppResourceId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdOn] The date and time on which the function app was registered with the static site.
  /// [functionAppRegion] The region of the function app registered with the static site
  /// [functionAppResourceId] The resource id of the function app registered with the static site
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult({
    required this.azureApiVersion,
    required this.createdOn,
    this.functionAppRegion,
    this.functionAppResourceId,
    required this.id,
    this.kind,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdOn': createdOn,
      'functionAppRegion': ?functionAppRegion,
      'functionAppResourceId': ?functionAppResourceId,
      'id': id,
      'kind': ?kind,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdOn: map['createdOn'] as String,
      functionAppRegion: (() { final guardedValue = map['functionAppRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionAppResourceId: (() { final guardedValue = map['functionAppResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
