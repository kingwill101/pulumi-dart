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
  P2sVpnServerConfigurationArgs({
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    pulumi.Output<String>? p2SVpnServerConfigurationName,
    pulumi.Output<P2SVpnServerConfigurationProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualWanName,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      p2SVpnServerConfigurationName = pulumi.Input.asOptionalInput<String>(p2SVpnServerConfigurationName),
      properties = pulumi.Input.asOptionalInput<P2SVpnServerConfigurationProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualWanName = pulumi.Input.asInput<String>(virtualWanName);

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
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      p2SVpnServerConfigurationName: map['p2SVpnServerConfigurationName'] == null ? null : pulumi.Output.create<String>(map['p2SVpnServerConfigurationName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<P2SVpnServerConfigurationProperties>(P2SVpnServerConfigurationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualWanName: pulumi.Output.create<String>(map['virtualWanName'] as String),
    );
  }
}

