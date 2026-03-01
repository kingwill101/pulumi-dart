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
    pulumi.Output<List<String>>? backendIpConfigurations,
    pulumi.Output<List<String>>? inboundNatRules,
    pulumi.Output<List<String>>? loadBalancingRules,
    pulumi.Output<String>? loadbalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? outboundRules,
    pulumi.Output<String>? synchronousMode,
    pulumi.Output<List<BackendAddressPoolTunnelInterface>>? tunnelInterfaces,
    pulumi.Output<String>? virtualNetworkId,
  }) :
      backendIpConfigurations = pulumi.Input.asOptionalInput<List<String>>(backendIpConfigurations),
      inboundNatRules = pulumi.Input.asOptionalInput<List<String>>(inboundNatRules),
      loadBalancingRules = pulumi.Input.asOptionalInput<List<String>>(loadBalancingRules),
      loadbalancerId = pulumi.Input.asOptionalInput<String>(loadbalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundRules = pulumi.Input.asOptionalInput<List<String>>(outboundRules),
      synchronousMode = pulumi.Input.asOptionalInput<String>(synchronousMode),
      tunnelInterfaces = pulumi.Input.asOptionalInput<List<BackendAddressPoolTunnelInterface>>(tunnelInterfaces),
      virtualNetworkId = pulumi.Input.asOptionalInput<String>(virtualNetworkId);

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
      backendIpConfigurations: map['backendIpConfigurations'] == null ? null : pulumi.Output.create<List<String>>((map['backendIpConfigurations'] as List).cast<String>()),
      inboundNatRules: map['inboundNatRules'] == null ? null : pulumi.Output.create<List<String>>((map['inboundNatRules'] as List).cast<String>()),
      loadBalancingRules: map['loadBalancingRules'] == null ? null : pulumi.Output.create<List<String>>((map['loadBalancingRules'] as List).cast<String>()),
      loadbalancerId: map['loadbalancerId'] == null ? null : pulumi.Output.create<String>(map['loadbalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundRules: map['outboundRules'] == null ? null : pulumi.Output.create<List<String>>((map['outboundRules'] as List).cast<String>()),
      synchronousMode: map['synchronousMode'] == null ? null : pulumi.Output.create<String>(map['synchronousMode'] as String),
      tunnelInterfaces: map['tunnelInterfaces'] == null ? null : pulumi.Output.create<List<BackendAddressPoolTunnelInterface>>(pulumi.Input.decodeList<BackendAddressPoolTunnelInterface>(map['tunnelInterfaces'], (value) => BackendAddressPoolTunnelInterface.fromMap((value as Map).cast<String, dynamic>()))),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkId'] as String),
    );
  }
}

