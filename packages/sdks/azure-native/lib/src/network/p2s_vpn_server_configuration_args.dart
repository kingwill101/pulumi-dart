// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'p2_svpn_server_configuration_properties.dart';

/// {@template pulumi_network_p2s_vpn_server_configuration_args_doc}
/// The set of arguments for P2sVpnServerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_p2s_vpn_server_configuration_args_doc}
class P2sVpnServerConfigurationArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the P2SVpnServerConfiguration.
  final pulumi.Input<String>? p2SVpnServerConfigurationName;
  /// Properties of the P2SVpnServer configuration.
  final pulumi.Input<P2SVpnServerConfigurationProperties>? properties;
  /// The resource group name of the VirtualWan.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualWan.
  final pulumi.Input<String> virtualWanName;

  /// Creates a new [P2sVpnServerConfigurationArgs].
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [p2SVpnServerConfigurationName] The name of the P2SVpnServerConfiguration.
  /// [properties] Properties of the P2SVpnServer configuration.
  /// [resourceGroupName] The resource group name of the VirtualWan.
  /// [virtualWanName] The name of the VirtualWan.
  const P2sVpnServerConfigurationArgs({
    this.id,
    this.name,
    this.p2SVpnServerConfigurationName,
    this.properties,
    required this.resourceGroupName,
    required this.virtualWanName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'p2SVpnServerConfigurationName': ?p2SVpnServerConfigurationName,
      'properties': ?pulumi.Input.mapOptionalInputValue<P2SVpnServerConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'virtualWanName': virtualWanName,
    };
  }

  factory P2sVpnServerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return P2sVpnServerConfigurationArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      p2SVpnServerConfigurationName: (() { final guardedValue = map['p2SVpnServerConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(P2SVpnServerConfigurationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualWanName: pulumi.Input.fromValue(map['virtualWanName'] as String),
    );
  }
}

