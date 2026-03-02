// ignore_for_file: unused_element, unnecessary_cast

import 'routing_configuration_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getHubVirtualNetworkConnection.
class GetHubVirtualNetworkConnectionResult {
  /// Deprecated: VirtualHub to RemoteVnet transit to enabled or not.
  final bool? allowHubToRemoteVnetTransit;
  /// Deprecated: Allow RemoteVnet to use Virtual Hub's gateways.
  final bool? allowRemoteVnetToUseHubVnetGateways;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Enable internet security.
  final bool? enableInternetSecurity;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the hub virtual network connection resource.
  final String provisioningState;
  /// Reference to the remote virtual network.
  final SubResourceResponse? remoteVirtualNetwork;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final RoutingConfigurationResponse? routingConfiguration;

  /// Creates a new [GetHubVirtualNetworkConnectionResult].
  /// [allowHubToRemoteVnetTransit] Deprecated: VirtualHub to RemoteVnet transit to enabled or not.
  /// [allowRemoteVnetToUseHubVnetGateways] Deprecated: Allow RemoteVnet to use Virtual Hub's gateways.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [enableInternetSecurity] Enable internet security.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the hub virtual network connection resource.
  /// [remoteVirtualNetwork] Reference to the remote virtual network.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  GetHubVirtualNetworkConnectionResult({
    this.allowHubToRemoteVnetTransit,
    this.allowRemoteVnetToUseHubVnetGateways,
    required this.azureApiVersion,
    this.enableInternetSecurity,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.remoteVirtualNetwork,
    this.routingConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowHubToRemoteVnetTransit': ?allowHubToRemoteVnetTransit,
      'allowRemoteVnetToUseHubVnetGateways': ?allowRemoteVnetToUseHubVnetGateways,
      'azureApiVersion': azureApiVersion,
      'enableInternetSecurity': ?enableInternetSecurity,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'remoteVirtualNetwork': ?remoteVirtualNetwork == null ? null : remoteVirtualNetwork!.toMap(),
      'routingConfiguration': ?routingConfiguration == null ? null : routingConfiguration!.toMap(),
    };
  }

  factory GetHubVirtualNetworkConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetHubVirtualNetworkConnectionResult(
      allowHubToRemoteVnetTransit: map['allowHubToRemoteVnetTransit'] == null ? null : map['allowHubToRemoteVnetTransit']! as bool,
      allowRemoteVnetToUseHubVnetGateways: map['allowRemoteVnetToUseHubVnetGateways'] == null ? null : map['allowRemoteVnetToUseHubVnetGateways']! as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : map['enableInternetSecurity']! as bool,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id']! as String,
      name: map['name'] == null ? null : map['name']! as String,
      provisioningState: map['provisioningState'] as String,
      remoteVirtualNetwork: map['remoteVirtualNetwork'] == null ? null : SubResourceResponse.fromMap((map['remoteVirtualNetwork']! as Map).cast<String, dynamic>()),
      routingConfiguration: map['routingConfiguration'] == null ? null : RoutingConfigurationResponse.fromMap((map['routingConfiguration']! as Map).cast<String, dynamic>()),
    );
  }
}

