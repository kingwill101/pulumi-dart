// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<String> actionName;
  /// The authentication type.
  final pulumi.Input<AccessKeyInfoBaseResponse>? authInfo;
  /// The application client type
  final pulumi.Input<String>? clientType;
  /// The connection information consumed by applications, including secrets, connection strings.
  final pulumi.Input<ConfigurationInfoResponse>? configurationInfo;
  /// The provisioning state.
  final pulumi.Input<String> provisioningState;
  /// The network solution.
  final pulumi.Input<PublicNetworkSolutionResponse>? publicNetworkSolution;
  /// connection scope in source service.
  final pulumi.Input<String>? scope;
  /// An option to store secret value in secure place
  final pulumi.Input<SecretStoreResponse>? secretStore;
  /// The target service properties
  final pulumi.Input<AzureResourceResponse>? targetService;
  /// The VNet solution.
  final pulumi.Input<VNetSolutionResponse>? vNetSolution;

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
      'authInfo': ?pulumi.Input.mapOptionalInputValue<AccessKeyInfoBaseResponse, Map<String, dynamic>>(authInfo, (value) => value.toMap()),
      'clientType': ?clientType,
      'configurationInfo': ?pulumi.Input.mapOptionalInputValue<ConfigurationInfoResponse, Map<String, dynamic>>(configurationInfo, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkSolution': ?pulumi.Input.mapOptionalInputValue<PublicNetworkSolutionResponse, Map<String, dynamic>>(publicNetworkSolution, (value) => value.toMap()),
      'scope': ?scope,
      'secretStore': ?pulumi.Input.mapOptionalInputValue<SecretStoreResponse, Map<String, dynamic>>(secretStore, (value) => value.toMap()),
      'targetService': ?pulumi.Input.mapOptionalInputValue<AzureResourceResponse, Map<String, dynamic>>(targetService, (value) => value.toMap()),
      'vNetSolution': ?pulumi.Input.mapOptionalInputValue<VNetSolutionResponse, Map<String, dynamic>>(vNetSolution, (value) => value.toMap()),
    };
  }

  factory CreateOrUpdateDryrunParametersResponse.fromMap(Map<String, dynamic> map) {
    return CreateOrUpdateDryrunParametersResponse(
      actionName: (map['actionName'] as String).input(),
      authInfo: map['authInfo'] == null ? null : (AccessKeyInfoBaseResponse.fromMap((map['authInfo']! as Map).cast<String, dynamic>())).input(),
      clientType: map['clientType'] == null ? null : (map['clientType']! as String).input(),
      configurationInfo: map['configurationInfo'] == null ? null : (ConfigurationInfoResponse.fromMap((map['configurationInfo']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicNetworkSolution: map['publicNetworkSolution'] == null ? null : (PublicNetworkSolutionResponse.fromMap((map['publicNetworkSolution']! as Map).cast<String, dynamic>())).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      secretStore: map['secretStore'] == null ? null : (SecretStoreResponse.fromMap((map['secretStore']! as Map).cast<String, dynamic>())).input(),
      targetService: map['targetService'] == null ? null : (AzureResourceResponse.fromMap((map['targetService']! as Map).cast<String, dynamic>())).input(),
      vNetSolution: map['vNetSolution'] == null ? null : (VNetSolutionResponse.fromMap((map['vNetSolution']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

