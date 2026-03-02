// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool_tunnel_interface.dart';

/// Input properties used for looking up and filtering BackendAddressPool resources.
class BackendAddressPoolState {
  /// The Backend IP Configurations associated with this Backend Address Pool.
  final pulumi.Input<List<String>>? backendIpConfigurations;
  /// An array of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool.
  final pulumi.Input<List<String>>? inboundNatRules;
  /// The Load Balancing Rules associated with this Backend Address Pool.
  final pulumi.Input<List<String>>? loadBalancingRules;
  /// The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? loadbalancerId;
  /// Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// An array of the Load Balancing Outbound Rules associated with this Backend Address Pool.
  final pulumi.Input<List<String>>? outboundRules;
  /// The backend address synchronous mode for the Backend Address Pool. Possible values are `Automatic` and `Manual`. This is required with `virtual_network_id`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `synchronous_mode` can set only for Load Balancer with `Standard` SKU.
  final pulumi.Input<String>? synchronousMode;
  /// One or more `tunnel_interface` blocks as defined below.
  final pulumi.Input<List<BackendAddressPoolTunnelInterface>>? tunnelInterfaces;
  /// The ID of the Virtual Network within which the Backend Address Pool should exist.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [BackendAddressPoolState].
  /// [backendIpConfigurations] The Backend IP Configurations associated with this Backend Address Pool.
  /// [inboundNatRules] An array of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool.
  /// [loadBalancingRules] The Load Balancing Rules associated with this Backend Address Pool.
  /// [loadbalancerId] The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created.
  /// [outboundRules] An array of the Load Balancing Outbound Rules associated with this Backend Address Pool.
  /// [synchronousMode] The backend address synchronous mode for the Backend Address Pool. Possible values are `Automatic` and `Manual`. This is required with `virtual_network_id`. Changing this forces a new resource to be created.
  /// [tunnelInterfaces] One or more `tunnel_interface` blocks as defined below.
  /// [virtualNetworkId] The ID of the Virtual Network within which the Backend Address Pool should exist.
  BackendAddressPoolState({
    this.backendIpConfigurations,
    this.inboundNatRules,
    this.loadBalancingRules,
    this.loadbalancerId,
    this.name,
    this.outboundRules,
    this.synchronousMode,
    this.tunnelInterfaces,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendIpConfigurations': ?backendIpConfigurations,
      'inboundNatRules': ?inboundNatRules,
      'loadBalancingRules': ?loadBalancingRules,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'outboundRules': ?outboundRules,
      'synchronousMode': ?synchronousMode,
      'tunnelInterfaces': ?pulumi.Input.mapOptionalInputValue<List<BackendAddressPoolTunnelInterface>, List<Map<String, dynamic>>>(tunnelInterfaces, (value) => pulumi.Input.encodeList<BackendAddressPoolTunnelInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory BackendAddressPoolState.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolState(
      backendIpConfigurations: map['backendIpConfigurations'] == null ? null : ((map['backendIpConfigurations']! as List).cast<String>()).input(),
      inboundNatRules: map['inboundNatRules'] == null ? null : ((map['inboundNatRules']! as List).cast<String>()).input(),
      loadBalancingRules: map['loadBalancingRules'] == null ? null : ((map['loadBalancingRules']! as List).cast<String>()).input(),
      loadbalancerId: map['loadbalancerId'] == null ? null : (map['loadbalancerId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      outboundRules: map['outboundRules'] == null ? null : ((map['outboundRules']! as List).cast<String>()).input(),
      synchronousMode: map['synchronousMode'] == null ? null : (map['synchronousMode']! as String).input(),
      tunnelInterfaces: map['tunnelInterfaces'] == null ? null : (pulumi.Input.decodeList<BackendAddressPoolTunnelInterface>(map['tunnelInterfaces']!, (value) => BackendAddressPoolTunnelInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : (map['virtualNetworkId']! as String).input(),
    );
  }
}

