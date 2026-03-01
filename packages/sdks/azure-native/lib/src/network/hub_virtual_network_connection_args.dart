// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_configuration.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_hub_virtual_network_connection_args_doc}
/// The set of arguments for HubVirtualNetworkConnection.
/// {@endtemplate}
/// {@macro pulumi_network_hub_virtual_network_connection_args_doc}
class HubVirtualNetworkConnectionArgs {
  /// Deprecated: VirtualHub to RemoteVnet transit to enabled or not.
  final pulumi.Input<bool>? allowHubToRemoteVnetTransit;
  /// Deprecated: Allow RemoteVnet to use Virtual Hub's gateways.
  final pulumi.Input<bool>? allowRemoteVnetToUseHubVnetGateways;
  /// The name of the HubVirtualNetworkConnection.
  final pulumi.Input<String>? connectionName;
  /// Enable internet security.
  final pulumi.Input<bool>? enableInternetSecurity;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Reference to the remote virtual network.
  final pulumi.Input<SubResource>? remoteVirtualNetwork;
  /// The resource group name of the HubVirtualNetworkConnection.
  final pulumi.Input<String> resourceGroupName;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfiguration>? routingConfiguration;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [HubVirtualNetworkConnectionArgs].
  /// [allowHubToRemoteVnetTransit] Deprecated: VirtualHub to RemoteVnet transit to enabled or not.
  /// [allowRemoteVnetToUseHubVnetGateways] Deprecated: Allow RemoteVnet to use Virtual Hub's gateways.
  /// [connectionName] The name of the HubVirtualNetworkConnection.
  /// [enableInternetSecurity] Enable internet security.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [remoteVirtualNetwork] Reference to the remote virtual network.
  /// [resourceGroupName] The resource group name of the HubVirtualNetworkConnection.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [virtualHubName] The name of the VirtualHub.
  HubVirtualNetworkConnectionArgs({
    pulumi.Output<bool>? allowHubToRemoteVnetTransit,
    pulumi.Output<bool>? allowRemoteVnetToUseHubVnetGateways,
    pulumi.Output<String>? connectionName,
    pulumi.Output<bool>? enableInternetSecurity,
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    pulumi.Output<SubResource>? remoteVirtualNetwork,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<RoutingConfiguration>? routingConfiguration,
    required pulumi.Output<String> virtualHubName,
  }) :
      allowHubToRemoteVnetTransit = pulumi.Input.asOptionalInput<bool>(allowHubToRemoteVnetTransit),
      allowRemoteVnetToUseHubVnetGateways = pulumi.Input.asOptionalInput<bool>(allowRemoteVnetToUseHubVnetGateways),
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      enableInternetSecurity = pulumi.Input.asOptionalInput<bool>(enableInternetSecurity),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      remoteVirtualNetwork = pulumi.Input.asOptionalInput<SubResource>(remoteVirtualNetwork),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routingConfiguration = pulumi.Input.asOptionalInput<RoutingConfiguration>(routingConfiguration),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowHubToRemoteVnetTransit': ?allowHubToRemoteVnetTransit,
      'allowRemoteVnetToUseHubVnetGateways': ?allowRemoteVnetToUseHubVnetGateways,
      'connectionName': ?connectionName,
      'enableInternetSecurity': ?enableInternetSecurity,
      'id': ?id,
      'name': ?name,
      'remoteVirtualNetwork': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(remoteVirtualNetwork, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'routingConfiguration': ?pulumi.Input.mapOptionalInputValue<RoutingConfiguration, Map<String, dynamic>>(routingConfiguration, (value) => value.toMap()),
      'virtualHubName': virtualHubName,
    };
  }

  factory HubVirtualNetworkConnectionArgs.fromMap(Map<String, dynamic> map) {
    return HubVirtualNetworkConnectionArgs(
      allowHubToRemoteVnetTransit: map['allowHubToRemoteVnetTransit'] == null ? null : pulumi.Output.create<bool>(map['allowHubToRemoteVnetTransit'] as bool),
      allowRemoteVnetToUseHubVnetGateways: map['allowRemoteVnetToUseHubVnetGateways'] == null ? null : pulumi.Output.create<bool>(map['allowRemoteVnetToUseHubVnetGateways'] as bool),
      connectionName: map['connectionName'] == null ? null : pulumi.Output.create<String>(map['connectionName'] as String),
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : pulumi.Output.create<bool>(map['enableInternetSecurity'] as bool),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      remoteVirtualNetwork: map['remoteVirtualNetwork'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['remoteVirtualNetwork'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routingConfiguration: map['routingConfiguration'] == null ? null : pulumi.Output.create<RoutingConfiguration>(RoutingConfiguration.fromMap((map['routingConfiguration'] as Map).cast<String, dynamic>())),
      virtualHubName: pulumi.Output.create<String>(map['virtualHubName'] as String),
    );
  }
}

