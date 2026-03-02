// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_connection_routing.dart';

/// Input properties used for looking up and filtering VirtualHubConnection resources.
class VirtualHubConnectionState {
  /// Should Internet Security be enabled to secure internet traffic? Defaults to `false`.
  final pulumi.Input<bool>? internetSecurityEnabled;
  /// The Name which should be used for this Connection, which must be unique within the Virtual Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Virtual Network which the Virtual Hub should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? remoteVirtualNetworkId;
  /// A `routing` block as defined below.
  final pulumi.Input<VirtualHubConnectionRouting>? routing;
  /// The ID of the Virtual Hub within which this connection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;

  /// Creates a new [VirtualHubConnectionState].
  /// [internetSecurityEnabled] Should Internet Security be enabled to secure internet traffic? Defaults to `false`.
  /// [name] The Name which should be used for this Connection, which must be unique within the Virtual Hub. Changing this forces a new resource to be created.
  /// [remoteVirtualNetworkId] The ID of the Virtual Network which the Virtual Hub should be connected to. Changing this forces a new resource to be created.
  /// [routing] A `routing` block as defined below.
  /// [virtualHubId] The ID of the Virtual Hub within which this connection should be created. Changing this forces a new resource to be created.
  VirtualHubConnectionState({
    this.internetSecurityEnabled,
    this.name,
    this.remoteVirtualNetworkId,
    this.routing,
    this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetSecurityEnabled': ?internetSecurityEnabled,
      'name': ?name,
      'remoteVirtualNetworkId': ?remoteVirtualNetworkId,
      'routing': ?pulumi.Input.mapOptionalInputValue<VirtualHubConnectionRouting, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'virtualHubId': ?virtualHubId,
    };
  }

  factory VirtualHubConnectionState.fromMap(Map<String, dynamic> map) {
    return VirtualHubConnectionState(
      internetSecurityEnabled: map['internetSecurityEnabled'] == null ? null : (map['internetSecurityEnabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      remoteVirtualNetworkId: map['remoteVirtualNetworkId'] == null ? null : (map['remoteVirtualNetworkId']! as String).input(),
      routing: map['routing'] == null ? null : (VirtualHubConnectionRouting.fromMap((map['routing']! as Map).cast<String, dynamic>())).input(),
      virtualHubId: map['virtualHubId'] == null ? null : (map['virtualHubId']! as String).input(),
    );
  }
}

