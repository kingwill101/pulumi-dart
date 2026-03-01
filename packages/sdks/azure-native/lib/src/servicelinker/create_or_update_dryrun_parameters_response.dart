// ignore_for_file: unused_element, unnecessary_cast

import 'access_key_info_base_response.dart';
import 'azure_resource_response.dart';
import 'configuration_info_response.dart';
import 'public_network_solution_response.dart';
import 'secret_store_response.dart';
import 'vnet_solution_response.dart';

/// The dryrun parameters for creation or update a linker
class CreateOrUpdateDryrunParametersResponse {
  /// The name of action for you dryrun job.
  /// Expected value is 'createOrUpdate'.
  final String actionName;
  /// The authentication type.
  final AccessKeyInfoBaseResponse? authInfo;
  /// The application client type
  final String? clientType;
  /// The connection information consumed by applications, including secrets, connection strings.
  final ConfigurationInfoResponse? configurationInfo;
  /// The provisioning state.
  final String provisioningState;
  /// The network solution.
  final PublicNetworkSolutionResponse? publicNetworkSolution;
  /// connection scope in source service.
  final String? scope;
  /// An option to store secret value in secure place
  final SecretStoreResponse? secretStore;
  /// The target service properties
  final AzureResourceResponse? targetService;
  /// The VNet solution.
  final VNetSolutionResponse? vNetSolution;

  /// Creates a new [CreateOrUpdateDryrunParametersResponse].
  /// [actionName] The name of action for you dryrun job.
  /// [authInfo] The authentication type.
  /// [clientType] The application client type
  /// [configurationInfo] The connection information consumed by applications, including secrets, connection strings.
  /// [provisioningState] The provisioning state.
  /// [publicNetworkSolution] The network solution.
  /// [scope] connection scope in source service.
  /// [secretStore] An option to store secret value in secure place
  /// [targetService] The target service properties
  /// [vNetSolution] The VNet solution.
  CreateOrUpdateDryrunParametersResponse({
    required this.actionName,
    this.authInfo,
    this.clientType,
    this.configurationInfo,
    required this.provisioningState,
    this.publicNetworkSolution,
    this.scope,
    this.secretStore,
    this.targetService,
    this.vNetSolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'authInfo': ?authInfo == null ? null : authInfo!.toMap(),
      'clientType': ?clientType,
      'configurationInfo': ?configurationInfo == null ? null : configurationInfo!.toMap(),
      'provisioningState': provisioningState,
      'publicNetworkSolution': ?publicNetworkSolution == null ? null : publicNetworkSolution!.toMap(),
      'scope': ?scope,
      'secretStore': ?secretStore == null ? null : secretStore!.toMap(),
      'targetService': ?targetService == null ? null : targetService!.toMap(),
      'vNetSolution': ?vNetSolution == null ? null : vNetSolution!.toMap(),
    };
  }

  factory CreateOrUpdateDryrunParametersResponse.fromMap(Map<String, dynamic> map) {
    return CreateOrUpdateDryrunParametersResponse(
      actionName: map['actionName'] as String,
      authInfo: map['authInfo'] == null ? null : AccessKeyInfoBaseResponse.fromMap((map['authInfo'] as Map).cast<String, dynamic>()),
      clientType: map['clientType'] == null ? null : map['clientType'] as String,
      configurationInfo: map['configurationInfo'] == null ? null : ConfigurationInfoResponse.fromMap((map['configurationInfo'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      publicNetworkSolution: map['publicNetworkSolution'] == null ? null : PublicNetworkSolutionResponse.fromMap((map['publicNetworkSolution'] as Map).cast<String, dynamic>()),
      scope: map['scope'] == null ? null : map['scope'] as String,
      secretStore: map['secretStore'] == null ? null : SecretStoreResponse.fromMap((map['secretStore'] as Map).cast<String, dynamic>()),
      targetService: map['targetService'] == null ? null : AzureResourceResponse.fromMap((map['targetService'] as Map).cast<String, dynamic>()),
      vNetSolution: map['vNetSolution'] == null ? null : VNetSolutionResponse.fromMap((map['vNetSolution'] as Map).cast<String, dynamic>()),
    );
  }
}

