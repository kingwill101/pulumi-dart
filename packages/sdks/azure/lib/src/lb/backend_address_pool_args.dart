// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool_tunnel_interface.dart';

/// {@template pulumi_lb_backend_address_pool_backend_address_pool_args_doc}
/// The set of arguments for BackendAddressPool.
/// {@endtemplate}
/// {@macro pulumi_lb_backend_address_pool_backend_address_pool_args_doc}
class BackendAddressPoolArgs {
  /// The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String> loadbalancerId;
  /// Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The backend address synchronous mode for the Backend Address Pool. Possible values are `Automatic` and `Manual`. This is required with `virtualNetworkId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `synchronousMode` can set only for Load Balancer with `Standard` SKU.
  final pulumi.Input<String>? synchronousMode;
  /// One or more `tunnelInterface` blocks as defined below.
  final pulumi.Input<List<BackendAddressPoolTunnelInterface>>? tunnelInterfaces;
  /// The ID of the Virtual Network within which the Backend Address Pool should exist.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [BackendAddressPoolArgs].
  /// [loadbalancerId] The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created.
  /// [synchronousMode] The backend address synchronous mode for the Backend Address Pool. Possible values are `Automatic` and `Manual`. This is required with `virtualNetworkId`. Changing this forces a new resource to be created.
  /// [tunnelInterfaces] One or more `tunnelInterface` blocks as defined below.
  /// [virtualNetworkId] The ID of the Virtual Network within which the Backend Address Pool should exist.
  const BackendAddressPoolArgs({
    required this.loadbalancerId,
    this.name,
    this.synchronousMode,
    this.tunnelInterfaces,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadbalancerId': loadbalancerId,
      'name': ?name,
      'synchronousMode': ?synchronousMode,
      'tunnelInterfaces': ?pulumi.Input.mapOptionalInputValue<List<BackendAddressPoolTunnelInterface>, List<Map<String, dynamic>>>(tunnelInterfaces, (value) => pulumi.Input.encodeList<BackendAddressPoolTunnelInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory BackendAddressPoolArgs.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolArgs(
      loadbalancerId: pulumi.Input.fromValue(map['loadbalancerId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synchronousMode: (() { final guardedValue = map['synchronousMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelInterfaces: (() { final guardedValue = map['tunnelInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendAddressPoolTunnelInterface>(guardedValue, (value) => BackendAddressPoolTunnelInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
