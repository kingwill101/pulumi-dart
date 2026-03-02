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
    this.allowHubToRemoteVnetTransit,
    this.allowRemoteVnetToUseHubVnetGateways,
    this.connectionName,
    this.enableInternetSecurity,
    this.id,
    this.name,
    this.remoteVirtualNetwork,
    required this.resourceGroupName,
    this.routingConfiguration,
    required this.virtualHubName,
  });

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
      allowHubToRemoteVnetTransit: map['allowHubToRemoteVnetTransit'] == null ? null : (map['allowHubToRemoteVnetTransit']! as bool).input(),
      allowRemoteVnetToUseHubVnetGateways: map['allowRemoteVnetToUseHubVnetGateways'] == null ? null : (map['allowRemoteVnetToUseHubVnetGateways']! as bool).input(),
      connectionName: map['connectionName'] == null ? null : (map['connectionName']! as String).input(),
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : (map['enableInternetSecurity']! as bool).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      remoteVirtualNetwork: map['remoteVirtualNetwork'] == null ? null : (SubResource.fromMap((map['remoteVirtualNetwork']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routingConfiguration: map['routingConfiguration'] == null ? null : (RoutingConfiguration.fromMap((map['routingConfiguration']! as Map).cast<String, dynamic>())).input(),
      virtualHubName: (map['virtualHubName'] as String).input(),
    );
  }
}

