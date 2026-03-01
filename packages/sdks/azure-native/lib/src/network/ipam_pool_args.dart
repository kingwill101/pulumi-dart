// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipam_pool_properties.dart';

/// {@template pulumi_network_ipam_pool_args_doc}
/// The set of arguments for IpamPool.
/// {@endtemplate}
/// {@macro pulumi_network_ipam_pool_args_doc}
class IpamPoolArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// IP Address Manager Pool resource name.
  final pulumi.Input<String>? poolName;
  /// Properties of IpamPool resource properties which are specific to the Pool resource.
  final pulumi.Input<IpamPoolProperties> properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpamPoolArgs].
  /// [location] The geo-location where the resource lives
  /// [networkManagerName] The name of the network manager.
  /// [poolName] IP Address Manager Pool resource name.
  /// [properties] Properties of IpamPool resource properties which are specific to the Pool resource.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  IpamPoolArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<String> networkManagerName,
    pulumi.Output<String>? poolName,
    required pulumi.Output<IpamPoolProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      poolName = pulumi.Input.asOptionalInput<String>(poolName),
      properties = pulumi.Input.asInput<IpamPoolProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'networkManagerName': networkManagerName,
      'poolName': ?poolName,
      'properties': pulumi.Input.mapInputValue<IpamPoolProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IpamPoolArgs.fromMap(Map<String, dynamic> map) {
    return IpamPoolArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      poolName: map['poolName'] == null ? null : pulumi.Output.create<String>(map['poolName'] as String),
      properties: pulumi.Output.create<IpamPoolProperties>(IpamPoolProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

