// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoutersRouterInterface {
  final pulumi.Input<String> ipRange;
  final pulumi.Input<String> linkedInterconnectAttachment;
  final pulumi.Input<String> linkedVpnTunnel;
  final pulumi.Input<String> name;
  final pulumi.Input<String> privateIpAddress;
  final pulumi.Input<String> redundantInterface;
  final pulumi.Input<String> subnetwork;

  /// Creates a new [GetRoutersRouterInterface].
  /// [ipRange] Required.
  /// [linkedInterconnectAttachment] Required.
  /// [linkedVpnTunnel] Required.
  /// [name] Required.
  /// [privateIpAddress] Required.
  /// [redundantInterface] Required.
  /// [subnetwork] Required.
  GetRoutersRouterInterface({
    required this.ipRange,
    required this.linkedInterconnectAttachment,
    required this.linkedVpnTunnel,
    required this.name,
    required this.privateIpAddress,
    required this.redundantInterface,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRange': ipRange,
      'linkedInterconnectAttachment': linkedInterconnectAttachment,
      'linkedVpnTunnel': linkedVpnTunnel,
      'name': name,
      'privateIpAddress': privateIpAddress,
      'redundantInterface': redundantInterface,
      'subnetwork': subnetwork,
    };
  }

  factory GetRoutersRouterInterface.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouterInterface(
      ipRange: pulumi.Input.fromValue(map['ipRange'] as String),
      linkedInterconnectAttachment: pulumi.Input.fromValue(map['linkedInterconnectAttachment'] as String),
      linkedVpnTunnel: pulumi.Input.fromValue(map['linkedVpnTunnel'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      redundantInterface: pulumi.Input.fromValue(map['redundantInterface'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}

