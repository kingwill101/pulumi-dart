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
  const NetworkProfileArgs({
    this.containerNetworkInterfaceConfigurations,
    this.id,
    this.location,
    this.networkProfileName,
    required this.resourceGroupName,
    this.tags,
  });

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
      containerNetworkInterfaceConfigurations: (() { final guardedValue = map['containerNetworkInterfaceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerNetworkInterfaceConfiguration>(guardedValue, (value) => ContainerNetworkInterfaceConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfileName: (() { final guardedValue = map['networkProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
