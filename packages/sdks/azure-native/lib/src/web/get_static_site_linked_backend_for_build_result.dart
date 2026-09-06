// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getStaticSiteLinkedBackendForBuild.
class GetStaticSiteLinkedBackendForBuildResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource id of the backend linked to the static site
  final String? backendResourceId;
  /// The date and time on which the backend was linked to the static site.
  final String? createdOn;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the linking process.
  final String? provisioningState;
  /// The region of the backend linked to the static site
  final String? region;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetStaticSiteLinkedBackendForBuildResult].
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
  const GetStaticSiteLinkedBackendForBuildResult({
    this.azureApiVersion,
    this.backendResourceId,
    this.createdOn,
    this.id,
    this.kind,
    this.name,
    this.provisioningState,
    this.region,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'backendResourceId': ?backendResourceId,
      'createdOn': ?createdOn,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'region': ?region,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetStaticSiteLinkedBackendForBuildResult.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteLinkedBackendForBuildResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backendResourceId: (() { final guardedValue = map['backendResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
