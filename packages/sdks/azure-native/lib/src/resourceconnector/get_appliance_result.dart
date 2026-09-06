// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_properties_infrastructure_config_response.dart';
import 'identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAppliance.
class GetApplianceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Represents a supported Fabric/Infra. (AKSEdge etc...).
  final String? distro;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// Contains infrastructure information about the Appliance
  final AppliancePropertiesInfrastructureConfigResponse? infrastructureConfig;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The current deployment or provisioning state, which only appears in the response.
  final String? provisioningState;
  /// Certificates pair used to download MSI certificate from HIS. Can only be set once.
  final String? publicKey;
  /// Appliance’s health and state of connection to on-prem. This list of values is not exhaustive.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Version of the Appliance
  final String? version;

  /// Creates a new [GetApplianceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [distro] Represents a supported Fabric/Infra. (AKSEdge etc...).
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Identity for the resource.
  /// [infrastructureConfig] Contains infrastructure information about the Appliance
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The current deployment or provisioning state, which only appears in the response.
  /// [publicKey] Certificates pair used to download MSI certificate from HIS. Can only be set once.
  /// [status] Appliance’s health and state of connection to on-prem. This list of values is not exhaustive.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the Appliance
  GetApplianceResult({
    this.azureApiVersion,
    String? distro,
    this.id,
    this.identity,
    this.infrastructureConfig,
    this.location,
    this.name,
    this.provisioningState,
    this.publicKey,
    this.status,
    this.systemData,
    this.tags,
    this.type,
    this.version,
  }) : distro = distro ?? 'AKSEdge';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'distro': ?distro,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'infrastructureConfig': ?infrastructureConfig?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'publicKey': ?publicKey,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetApplianceResult.fromMap(Map<String, dynamic> map) {
    return GetApplianceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distro: (() { final guardedValue = map['distro']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      infrastructureConfig: (() { final guardedValue = map['infrastructureConfig']; if (guardedValue == null) return null; return AppliancePropertiesInfrastructureConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
