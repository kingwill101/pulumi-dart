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
  /// The backend address synchronous mode for the Backend Address Pool. Possible values are `Automatic` and `Manual`. This is required with `virtual_network_id`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `synchronous_mode` can set only for Load Balancer with `Standard` SKU.
  final pulumi.Input<String>? synchronousMode;
  /// One or more `tunnel_interface` blocks as defined below.
  final pulumi.Input<List<BackendAddressPoolTunnelInterface>>? tunnelInterfaces;
  /// The ID of the Virtual Network within which the Backend Address Pool should exist.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [BackendAddressPoolArgs].
  /// [loadbalancerId] The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created.
  /// [synchronousMode] The backend address synchronous mode for the Backend Address Pool. Possible values are `Automatic` and `Manual`. This is required with `virtual_network_id`. Changing this forces a new resource to be created.
  /// [tunnelInterfaces] One or more `tunnel_interface` blocks as defined below.
  /// [virtualNetworkId] The ID of the Virtual Network within which the Backend Address Pool should exist.
  BackendAddressPoolArgs({
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
      loadbalancerId: (map['loadbalancerId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      synchronousMode: map['synchronousMode'] == null ? null : (map['synchronousMode']! as String).input(),
      tunnelInterfaces: map['tunnelInterfaces'] == null ? null : (pulumi.Input.decodeList<BackendAddressPoolTunnelInterface>(map['tunnelInterfaces']!, (value) => BackendAddressPoolTunnelInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : (map['virtualNetworkId']! as String).input(),
    );
  }
}

