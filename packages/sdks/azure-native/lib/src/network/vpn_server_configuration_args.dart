// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_server_configuration_properties.dart';

/// {@template pulumi_network_vpn_server_configuration_args_doc}
/// The set of arguments for VpnServerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_vpn_server_configuration_args_doc}
class VpnServerConfigurationArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Properties of the P2SVpnServer configuration.
  final pulumi.Input<VpnServerConfigurationProperties>? properties;
  /// The resource group name of the VpnServerConfiguration.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the VpnServerConfiguration being created or updated.
  final pulumi.Input<String>? vpnServerConfigurationName;

  /// Creates a new [VpnServerConfigurationArgs].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [properties] Properties of the P2SVpnServer configuration.
  /// [resourceGroupName] The resource group name of the VpnServerConfiguration.
  /// [tags] Resource tags.
  /// [vpnServerConfigurationName] The name of the VpnServerConfiguration being created or updated.
  VpnServerConfigurationArgs({
    this.id,
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    this.vpnServerConfigurationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VpnServerConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vpnServerConfigurationName': ?vpnServerConfigurationName,
    };
  }

  factory VpnServerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationArgs(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (VpnServerConfigurationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpnServerConfigurationName: map['vpnServerConfigurationName'] == null ? null : (map['vpnServerConfigurationName']! as String).input(),
    );
  }
}

