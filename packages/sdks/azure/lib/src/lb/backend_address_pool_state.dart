// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool_tunnel_interface.dart';

/// Input properties used for looking up and filtering BackendAddressPool resources.
class BackendAddressPoolState {
  /// The Backend IP Configurations associated with this Backend Address Pool.
  final pulumi.Input<List<String>?>? backendIpConfigurations;
  /// An array of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool.
  final pulumi.Input<List<String>?>? inboundNatRules;
  /// The Load Balancing Rules associated with this Backend Address Pool.
  final pulumi.Input<List<String>?>? loadBalancingRules;
  /// The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? loadbalancerId;
  /// Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// An array of the Load Balancing Outbound Rules associated with this Backend Address Pool.
  final pulumi.Input<List<String>?>? outboundRules;
  /// The backend address synchronous mode for the Backend Address Pool. Possible values are `Automatic` and `Manual`. This is required with `virtualNetworkId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `synchronousMode` can set only for Load Balancer with `Standard` SKU.
  final pulumi.Input<String?>? synchronousMode;
  /// One or more `tunnelInterface` blocks as defined below.
  final pulumi.Input<List<BackendAddressPoolTunnelInterface>?>? tunnelInterfaces;
  /// The ID of the Virtual Network within which the Backend Address Pool should exist.
  final pulumi.Input<String?>? virtualNetworkId;

  /// Creates a new [BackendAddressPoolState].
  /// [backendIpConfigurations] The Backend IP Configurations associated with this Backend Address Pool.
  /// [inboundNatRules] An array of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool.
  /// [loadBalancingRules] The Load Balancing Rules associated with this Backend Address Pool.
  /// [loadbalancerId] The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created.
  /// [outboundRules] An array of the Load Balancing Outbound Rules associated with this Backend Address Pool.
  /// [synchronousMode] The backend address synchronous mode for the Backend Address Pool. Possible values are `Automatic` and `Manual`. This is required with `virtualNetworkId`. Changing this forces a new resource to be created.
  /// [tunnelInterfaces] One or more `tunnelInterface` blocks as defined below.
  /// [virtualNetworkId] The ID of the Virtual Network within which the Backend Address Pool should exist.
  const BackendAddressPoolState({
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
      backendIpConfigurations: (() { final guardedValue = map['backendIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inboundNatRules: (() { final guardedValue = map['inboundNatRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadBalancingRules: (() { final guardedValue = map['loadBalancingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadbalancerId: (() { final guardedValue = map['loadbalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundRules: (() { final guardedValue = map['outboundRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      synchronousMode: (() { final guardedValue = map['synchronousMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelInterfaces: (() { final guardedValue = map['tunnelInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendAddressPoolTunnelInterface>(guardedValue, (value) => BackendAddressPoolTunnelInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
