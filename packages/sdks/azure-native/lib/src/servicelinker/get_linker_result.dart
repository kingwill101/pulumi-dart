// ignore_for_file: unused_element, unnecessary_cast

import 'access_key_info_base_response.dart';
import 'azure_resource_response.dart';
import 'configuration_info_response.dart';
import 'public_network_solution_response.dart';
import 'secret_store_response.dart';
import 'system_data_response.dart';
import 'vnet_solution_response.dart';

/// Result data returned by getLinker.
class GetLinkerResult {
  /// The authentication type.
  final AccessKeyInfoBaseResponse? authInfo;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The application client type
  final String? clientType;
  /// The connection information consumed by applications, including secrets, connection strings.
  final ConfigurationInfoResponse? configurationInfo;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The provisioning state.
  final String provisioningState;
  /// The network solution.
  final PublicNetworkSolutionResponse? publicNetworkSolution;
  /// connection scope in source service.
  final String? scope;
  /// An option to store secret value in secure place
  final SecretStoreResponse? secretStore;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The target service properties
  final AzureResourceResponse? targetService;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The VNet solution.
  final VNetSolutionResponse? vNetSolution;

  /// Creates a new [GetLinkerResult].
  /// [authInfo] The authentication type.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientType] The application client type
  /// [configurationInfo] The connection information consumed by applications, including secrets, connection strings.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state.
  /// [publicNetworkSolution] The network solution.
  /// [scope] connection scope in source service.
  /// [secretStore] An option to store secret value in secure place
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetService] The target service properties
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vNetSolution] The VNet solution.
  const GetLinkerResult({
    this.authInfo,
    required this.azureApiVersion,
    this.clientType,
    this.configurationInfo,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.publicNetworkSolution,
    this.scope,
    this.secretStore,
    required this.systemData,
    this.targetService,
    required this.type,
    this.vNetSolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authInfo': ?authInfo?.toMap(),
      'azureApiVersion': azureApiVersion,
      'clientType': ?clientType,
      'configurationInfo': ?configurationInfo?.toMap(),
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'publicNetworkSolution': ?publicNetworkSolution?.toMap(),
      'scope': ?scope,
      'secretStore': ?secretStore?.toMap(),
      'systemData': systemData.toMap(),
      'targetService': ?targetService?.toMap(),
      'type': type,
      'vNetSolution': ?vNetSolution?.toMap(),
    };
  }

  factory GetLinkerResult.fromMap(Map<String, dynamic> map) {
    return GetLinkerResult(
      authInfo: (() { final guardedValue = map['authInfo']; if (guardedValue == null) return null; return AccessKeyInfoBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      clientType: (() { final guardedValue = map['clientType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationInfo: (() { final guardedValue = map['configurationInfo']; if (guardedValue == null) return null; return ConfigurationInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publicNetworkSolution: (() { final guardedValue = map['publicNetworkSolution']; if (guardedValue == null) return null; return PublicNetworkSolutionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretStore: (() { final guardedValue = map['secretStore']; if (guardedValue == null) return null; return SecretStoreResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      targetService: (() { final guardedValue = map['targetService']; if (guardedValue == null) return null; return AzureResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: map['type'] as String,
      vNetSolution: (() { final guardedValue = map['vNetSolution']; if (guardedValue == null) return null; return VNetSolutionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
