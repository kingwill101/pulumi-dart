// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_connection_routing.dart';

/// {@template pulumi_network_virtual_hub_connection_virtual_hub_connection_args_doc}
/// The set of arguments for VirtualHubConnection.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_connection_virtual_hub_connection_args_doc}
class VirtualHubConnectionArgs {
  /// Should Internet Security be enabled to secure internet traffic? Defaults to `false`.
  final pulumi.Input<bool>? internetSecurityEnabled;
  /// The Name which should be used for this Connection, which must be unique within the Virtual Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Virtual Network which the Virtual Hub should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> remoteVirtualNetworkId;
  /// A `routing` block as defined below.
  final pulumi.Input<VirtualHubConnectionRouting>? routing;
  /// The ID of the Virtual Hub within which this connection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualHubId;

  /// Creates a new [VirtualHubConnectionArgs].
  /// [internetSecurityEnabled] Should Internet Security be enabled to secure internet traffic? Defaults to `false`.
  /// [name] The Name which should be used for this Connection, which must be unique within the Virtual Hub. Changing this forces a new resource to be created.
  /// [remoteVirtualNetworkId] The ID of the Virtual Network which the Virtual Hub should be connected to. Changing this forces a new resource to be created.
  /// [routing] A `routing` block as defined below.
  /// [virtualHubId] The ID of the Virtual Hub within which this connection should be created. Changing this forces a new resource to be created.
  VirtualHubConnectionArgs({
    pulumi.Output<bool>? internetSecurityEnabled,
    pulumi.Output<String>? name,
    required pulumi.Output<String> remoteVirtualNetworkId,
    pulumi.Output<VirtualHubConnectionRouting>? routing,
    required pulumi.Output<String> virtualHubId,
  }) :
      internetSecurityEnabled = pulumi.Input.asOptionalInput<bool>(internetSecurityEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      remoteVirtualNetworkId = pulumi.Input.asInput<String>(remoteVirtualNetworkId),
      routing = pulumi.Input.asOptionalInput<VirtualHubConnectionRouting>(routing),
      virtualHubId = pulumi.Input.asInput<String>(virtualHubId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetSecurityEnabled': ?internetSecurityEnabled,
      'name': ?name,
      'remoteVirtualNetworkId': remoteVirtualNetworkId,
      'routing': ?pulumi.Input.mapOptionalInputValue<VirtualHubConnectionRouting, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'virtualHubId': virtualHubId,
    };
  }

  factory VirtualHubConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHubConnectionArgs(
      internetSecurityEnabled: map['internetSecurityEnabled'] == null ? null : pulumi.Output.create<bool>(map['internetSecurityEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      remoteVirtualNetworkId: pulumi.Output.create<String>(map['remoteVirtualNetworkId'] as String),
      routing: map['routing'] == null ? null : pulumi.Output.create<VirtualHubConnectionRouting>(VirtualHubConnectionRouting.fromMap((map['routing'] as Map).cast<String, dynamic>())),
      virtualHubId: pulumi.Output.create<String>(map['virtualHubId'] as String),
    );
  }
}

