// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_properties_infrastructure_config_response.dart';
import 'identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAppliance.
class GetApplianceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Represents a supported Fabric/Infra. (AKSEdge etc...).
  final String? distro;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// Contains infrastructure information about the Appliance
  final AppliancePropertiesInfrastructureConfigResponse? infrastructureConfig;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The current deployment or provisioning state, which only appears in the response.
  final String provisioningState;
  /// Certificates pair used to download MSI certificate from HIS. Can only be set once.
  final String? publicKey;
  /// Appliance’s health and state of connection to on-prem. This list of values is not exhaustive.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
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
    required this.azureApiVersion,
    this.distro,
    required this.id,
    this.identity,
    this.infrastructureConfig,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.publicKey,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'distro': ?distro,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'infrastructureConfig': ?infrastructureConfig == null ? null : infrastructureConfig!.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'publicKey': ?publicKey,
      'status': status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': ?version,
    };
  }

  factory GetApplianceResult.fromMap(Map<String, dynamic> map) {
    return GetApplianceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      distro: map['distro'] == null ? null : map['distro']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      infrastructureConfig: map['infrastructureConfig'] == null ? null : AppliancePropertiesInfrastructureConfigResponse.fromMap((map['infrastructureConfig']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publicKey: map['publicKey'] == null ? null : map['publicKey']! as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version']! as String,
    );
  }
}

