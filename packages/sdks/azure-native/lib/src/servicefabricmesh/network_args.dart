// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_resource_properties.dart';

/// {@template pulumi_servicefabricmesh_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_network_args_doc}
class NetworkArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The identity of the network.
  final pulumi.Input<String>? networkResourceName;
  /// Describes properties of a network resource.
  final pulumi.Input<NetworkResourceProperties> properties;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkArgs].
  /// [location] The geo-location where the resource lives
  /// [networkResourceName] The identity of the network.
  /// [properties] Describes properties of a network resource.
  /// [resourceGroupName] Azure resource group name
  /// [tags] Resource tags.
  NetworkArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? networkResourceName,
    required pulumi.Output<NetworkResourceProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      networkResourceName = pulumi.Input.asOptionalInput<String>(networkResourceName),
      properties = pulumi.Input.asInput<NetworkResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'networkResourceName': ?networkResourceName,
      'properties': pulumi.Input.mapInputValue<NetworkResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkResourceName: map['networkResourceName'] == null ? null : pulumi.Output.create<String>(map['networkResourceName'] as String),
      properties: pulumi.Output.create<NetworkResourceProperties>(NetworkResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

