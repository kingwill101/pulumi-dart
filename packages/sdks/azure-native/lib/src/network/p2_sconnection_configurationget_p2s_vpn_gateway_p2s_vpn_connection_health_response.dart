// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'routing_configurationget_p2s_vpn_gateway_p2s_vpn_connection_health_response.dart';
import 'sub_resource_response.dart';
import 'vpn_server_configuration_policy_group_response.dart';

/// P2SConnectionConfiguration Resource.
class P2SConnectionConfigurationgetP2sVpnGatewayP2sVpnConnectionHealthResponse {
  /// List of Configuration Policy Groups that this P2SConnectionConfiguration is attached to.
  final pulumi.Input<List<SubResourceResponse>> configurationPolicyGroupAssociations;
  /// Flag indicating whether the enable internet security flag is turned on for the P2S Connections or not.
  final pulumi.Input<bool>? enableInternetSecurity;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// List of previous Configuration Policy Groups that this P2SConnectionConfiguration was attached to.
  final pulumi.Input<List<VpnServerConfigurationPolicyGroupResponse>> previousConfigurationPolicyGroupAssociations;
  /// The provisioning state of the P2SConnectionConfiguration resource.
  final pulumi.Input<String> provisioningState;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfigurationgetP2sVpnGatewayP2sVpnConnectionHealthResponse>? routingConfiguration;
  /// The reference to the address space resource which represents Address space for P2S VpnClient.
  final pulumi.Input<AddressSpaceResponse>? vpnClientAddressPool;

  /// Creates a new [P2SConnectionConfigurationgetP2sVpnGatewayP2sVpnConnectionHealthResponse].
  /// [configurationPolicyGroupAssociations] List of Configuration Policy Groups that this P2SConnectionConfiguration is attached to.
  /// [enableInternetSecurity] Flag indicating whether the enable internet security flag is turned on for the P2S Connections or not.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [previousConfigurationPolicyGroupAssociations] List of previous Configuration Policy Groups that this P2SConnectionConfiguration was attached to.
  /// [provisioningState] The provisioning state of the P2SConnectionConfiguration resource.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [vpnClientAddressPool] The reference to the address space resource which represents Address space for P2S VpnClient.
  const P2SConnectionConfigurationgetP2sVpnGatewayP2sVpnConnectionHealthResponse({
    required this.configurationPolicyGroupAssociations,
    this.enableInternetSecurity,
    required this.etag,
    this.id,
    this.name,
    required this.previousConfigurationPolicyGroupAssociations,
    required this.provisioningState,
    this.routingConfiguration,
    this.vpnClientAddressPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationPolicyGroupAssociations': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(configurationPolicyGroupAssociations, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableInternetSecurity': ?enableInternetSecurity,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'previousConfigurationPolicyGroupAssociations': pulumi.Input.mapInputValue<List<VpnServerConfigurationPolicyGroupResponse>, List<Map<String, dynamic>>>(previousConfigurationPolicyGroupAssociations, (value) => pulumi.Input.encodeList<VpnServerConfigurationPolicyGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'routingConfiguration': ?pulumi.Input.mapOptionalInputValue<RoutingConfigurationgetP2sVpnGatewayP2sVpnConnectionHealthResponse, Map<String, dynamic>>(routingConfiguration, (value) => value.toMap()),
      'vpnClientAddressPool': ?pulumi.Input.mapOptionalInputValue<AddressSpaceResponse, Map<String, dynamic>>(vpnClientAddressPool, (value) => value.toMap()),
    };
  }

  factory P2SConnectionConfigurationgetP2sVpnGatewayP2sVpnConnectionHealthResponse.fromMap(Map<String, dynamic> map) {
    return P2SConnectionConfigurationgetP2sVpnGatewayP2sVpnConnectionHealthResponse(
      configurationPolicyGroupAssociations: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['configurationPolicyGroupAssociations']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      enableInternetSecurity: (() { final guardedValue = map['enableInternetSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      previousConfigurationPolicyGroupAssociations: pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupResponse>(map['previousConfigurationPolicyGroupAssociations']!, (value) => VpnServerConfigurationPolicyGroupResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      routingConfiguration: (() { final guardedValue = map['routingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingConfigurationgetP2sVpnGatewayP2sVpnConnectionHealthResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpnClientAddressPool: (() { final guardedValue = map['vpnClientAddressPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
