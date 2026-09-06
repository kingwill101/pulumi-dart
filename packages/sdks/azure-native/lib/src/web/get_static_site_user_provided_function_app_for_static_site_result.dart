// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getStaticSiteUserProvidedFunctionAppForStaticSite.
class GetStaticSiteUserProvidedFunctionAppForStaticSiteResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The date and time on which the function app was registered with the static site.
  final String? createdOn;
  /// The region of the function app registered with the static site
  final String? functionAppRegion;
  /// The resource id of the function app registered with the static site
  final String? functionAppResourceId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetStaticSiteUserProvidedFunctionAppForStaticSiteResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdOn] The date and time on which the function app was registered with the static site.
  /// [functionAppRegion] The region of the function app registered with the static site
  /// [functionAppResourceId] The resource id of the function app registered with the static site
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetStaticSiteUserProvidedFunctionAppForStaticSiteResult({
    this.azureApiVersion,
    this.createdOn,
    this.functionAppRegion,
    this.functionAppResourceId,
    this.id,
    this.kind,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdOn': ?createdOn,
      'functionAppRegion': ?functionAppRegion,
      'functionAppResourceId': ?functionAppResourceId,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetStaticSiteUserProvidedFunctionAppForStaticSiteResult.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteUserProvidedFunctionAppForStaticSiteResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionAppRegion: (() { final guardedValue = map['functionAppRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionAppResourceId: (() { final guardedValue = map['functionAppResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
