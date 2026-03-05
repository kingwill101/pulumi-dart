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
      actionName: pulumi.Input.fromValue(map['actionName'] as String),
      authInfo: (() { final guardedValue = map['authInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessKeyInfoBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientType: (() { final guardedValue = map['clientType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationInfo: (() { final guardedValue = map['configurationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkSolution: (() { final guardedValue = map['publicNetworkSolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicNetworkSolutionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStore: (() { final guardedValue = map['secretStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretStoreResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetService: (() { final guardedValue = map['targetService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vNetSolution: (() { final guardedValue = map['vNetSolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VNetSolutionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

