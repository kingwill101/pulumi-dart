// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_network_interface_configuration.dart';

/// {@template pulumi_network_network_profile_args_doc}
/// The set of arguments for NetworkProfile.
/// {@endtemplate}
/// {@macro pulumi_network_network_profile_args_doc}
class NetworkProfileArgs {
  /// List of chid container network interface configurations.
  final pulumi.Input<List<ContainerNetworkInterfaceConfiguration>>? containerNetworkInterfaceConfigurations;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the network profile.
  final pulumi.Input<String>? networkProfileName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkProfileArgs].
  /// [containerNetworkInterfaceConfigurations] List of chid container network interface configurations.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [networkProfileName] The name of the network profile.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  NetworkProfileArgs({
    pulumi.Output<List<ContainerNetworkInterfaceConfiguration>>? containerNetworkInterfaceConfigurations,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    pulumi.Output<String>? networkProfileName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      containerNetworkInterfaceConfigurations = pulumi.Input.asOptionalInput<List<ContainerNetworkInterfaceConfiguration>>(containerNetworkInterfaceConfigurations),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkProfileName = pulumi.Input.asOptionalInput<String>(networkProfileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerNetworkInterfaceConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ContainerNetworkInterfaceConfiguration>, List<Map<String, dynamic>>>(containerNetworkInterfaceConfigurations, (value) => pulumi.Input.encodeList<ContainerNetworkInterfaceConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'location': ?location,
      'networkProfileName': ?networkProfileName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkProfileArgs.fromMap(Map<String, dynamic> map) {
    return NetworkProfileArgs(
      containerNetworkInterfaceConfigurations: map['containerNetworkInterfaceConfigurations'] == null ? null : pulumi.Output.create<List<ContainerNetworkInterfaceConfiguration>>(pulumi.Input.decodeList<ContainerNetworkInterfaceConfiguration>(map['containerNetworkInterfaceConfigurations'], (value) => ContainerNetworkInterfaceConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkProfileName: map['networkProfileName'] == null ? null : pulumi.Output.create<String>(map['networkProfileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

