// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_info_base.dart';
import 'azure_resource.dart';
import 'configuration_info.dart';
import 'public_network_solution.dart';
import 'secret_store.dart';
import 'vnet_solution.dart';

/// The dryrun parameters for creation or update a linker
class CreateOrUpdateDryrunParameters {
  /// The name of action for you dryrun job.
  /// Expected value is 'createOrUpdate'.
  final pulumi.Input<String> actionName;
  /// The authentication type.
  final pulumi.Input<AccessKeyInfoBase>? authInfo;
  /// The application client type
  final pulumi.Input<String>? clientType;
  /// The connection information consumed by applications, including secrets, connection strings.
  final pulumi.Input<ConfigurationInfo>? configurationInfo;
  /// The network solution.
  final pulumi.Input<PublicNetworkSolution>? publicNetworkSolution;
  /// connection scope in source service.
  final pulumi.Input<String>? scope;
  /// An option to store secret value in secure place
  final pulumi.Input<SecretStore>? secretStore;
  /// The target service properties
  final pulumi.Input<AzureResource>? targetService;
  /// The VNet solution.
  final pulumi.Input<VNetSolution>? vNetSolution;

  /// Creates a new [CreateOrUpdateDryrunParameters].
  /// [actionName] The name of action for you dryrun job.
  /// [authInfo] The authentication type.
  /// [clientType] The application client type
  /// [configurationInfo] The connection information consumed by applications, including secrets, connection strings.
  /// [publicNetworkSolution] The network solution.
  /// [scope] connection scope in source service.
  /// [secretStore] An option to store secret value in secure place
  /// [targetService] The target service properties
  /// [vNetSolution] The VNet solution.
  const CreateOrUpdateDryrunParameters({
    required this.actionName,
    this.authInfo,
    this.clientType,
    this.configurationInfo,
    this.publicNetworkSolution,
    this.scope,
    this.secretStore,
    this.targetService,
    this.vNetSolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'authInfo': ?pulumi.Input.mapOptionalInputValue<AccessKeyInfoBase, Map<String, dynamic>>(authInfo, (value) => value.toMap()),
      'clientType': ?clientType,
      'configurationInfo': ?pulumi.Input.mapOptionalInputValue<ConfigurationInfo, Map<String, dynamic>>(configurationInfo, (value) => value.toMap()),
      'publicNetworkSolution': ?pulumi.Input.mapOptionalInputValue<PublicNetworkSolution, Map<String, dynamic>>(publicNetworkSolution, (value) => value.toMap()),
      'scope': ?scope,
      'secretStore': ?pulumi.Input.mapOptionalInputValue<SecretStore, Map<String, dynamic>>(secretStore, (value) => value.toMap()),
      'targetService': ?pulumi.Input.mapOptionalInputValue<AzureResource, Map<String, dynamic>>(targetService, (value) => value.toMap()),
      'vNetSolution': ?pulumi.Input.mapOptionalInputValue<VNetSolution, Map<String, dynamic>>(vNetSolution, (value) => value.toMap()),
    };
  }

  factory CreateOrUpdateDryrunParameters.fromMap(Map<String, dynamic> map) {
    return CreateOrUpdateDryrunParameters(
      actionName: pulumi.Input.fromValue(map['actionName'] as String),
      authInfo: (() { final guardedValue = map['authInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessKeyInfoBase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientType: (() { final guardedValue = map['clientType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationInfo: (() { final guardedValue = map['configurationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicNetworkSolution: (() { final guardedValue = map['publicNetworkSolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicNetworkSolution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStore: (() { final guardedValue = map['secretStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetService: (() { final guardedValue = map['targetService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vNetSolution: (() { final guardedValue = map['vNetSolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VNetSolution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
