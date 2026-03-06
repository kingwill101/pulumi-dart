// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_info_base.dart';
import 'azure_resource.dart';
import 'configuration_info.dart';
import 'public_network_solution.dart';
import 'secret_store.dart';
import 'vnet_solution.dart';

/// {@template pulumi_servicelinker_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_servicelinker_connector_args_doc}
class ConnectorArgs {
  /// The authentication type.
  final pulumi.Input<AccessKeyInfoBase>? authInfo;
  /// The application client type
  final pulumi.Input<String>? clientType;
  /// The connection information consumed by applications, including secrets, connection strings.
  final pulumi.Input<ConfigurationInfo>? configurationInfo;
  /// The name of resource.
  final pulumi.Input<String>? connectorName;
  /// The name of Azure region.
  final pulumi.Input<String> location;
  /// The network solution.
  final pulumi.Input<PublicNetworkSolution>? publicNetworkSolution;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// connection scope in source service.
  final pulumi.Input<String>? scope;
  /// An option to store secret value in secure place
  final pulumi.Input<SecretStore>? secretStore;
  /// The ID of the target subscription.
  final pulumi.Input<String>? subscriptionId;
  /// The target service properties
  final pulumi.Input<AzureResource>? targetService;
  /// The VNet solution.
  final pulumi.Input<VNetSolution>? vNetSolution;

  /// Creates a new [ConnectorArgs].
  /// [authInfo] The authentication type.
  /// [clientType] The application client type
  /// [configurationInfo] The connection information consumed by applications, including secrets, connection strings.
  /// [connectorName] The name of resource.
  /// [location] The name of Azure region.
  /// [publicNetworkSolution] The network solution.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] connection scope in source service.
  /// [secretStore] An option to store secret value in secure place
  /// [subscriptionId] The ID of the target subscription.
  /// [targetService] The target service properties
  /// [vNetSolution] The VNet solution.
  const ConnectorArgs({
    this.authInfo,
    this.clientType,
    this.configurationInfo,
    this.connectorName,
    required this.location,
    this.publicNetworkSolution,
    required this.resourceGroupName,
    this.scope,
    this.secretStore,
    this.subscriptionId,
    this.targetService,
    this.vNetSolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authInfo': ?pulumi.Input.mapOptionalInputValue<AccessKeyInfoBase, Map<String, dynamic>>(authInfo, (value) => value.toMap()),
      'clientType': ?clientType,
      'configurationInfo': ?pulumi.Input.mapOptionalInputValue<ConfigurationInfo, Map<String, dynamic>>(configurationInfo, (value) => value.toMap()),
      'connectorName': ?connectorName,
      'location': location,
      'publicNetworkSolution': ?pulumi.Input.mapOptionalInputValue<PublicNetworkSolution, Map<String, dynamic>>(publicNetworkSolution, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'secretStore': ?pulumi.Input.mapOptionalInputValue<SecretStore, Map<String, dynamic>>(secretStore, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
      'targetService': ?pulumi.Input.mapOptionalInputValue<AzureResource, Map<String, dynamic>>(targetService, (value) => value.toMap()),
      'vNetSolution': ?pulumi.Input.mapOptionalInputValue<VNetSolution, Map<String, dynamic>>(vNetSolution, (value) => value.toMap()),
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      authInfo: (() { final guardedValue = map['authInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessKeyInfoBase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientType: (() { final guardedValue = map['clientType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationInfo: (() { final guardedValue = map['configurationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectorName: (() { final guardedValue = map['connectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      publicNetworkSolution: (() { final guardedValue = map['publicNetworkSolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicNetworkSolution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStore: (() { final guardedValue = map['secretStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetService: (() { final guardedValue = map['targetService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vNetSolution: (() { final guardedValue = map['vNetSolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VNetSolution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

