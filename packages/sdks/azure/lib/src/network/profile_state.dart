// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_container_network_interface.dart';

/// Input properties used for looking up and filtering Profile resources.
class ProfileState {
  /// A `container_network_interface` block as documented below.
  final pulumi.Input<ProfileContainerNetworkInterface>? containerNetworkInterface;
  /// A list of Container Network Interface IDs.
  final pulumi.Input<List<String>>? containerNetworkInterfaceIds;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Network Profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProfileState].
  /// [containerNetworkInterface] A `container_network_interface` block as documented below.
  /// [containerNetworkInterfaceIds] A list of Container Network Interface IDs.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Network Profile. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags assigned to the resource.
  ProfileState({
    this.containerNetworkInterface,
    this.containerNetworkInterfaceIds,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerNetworkInterface': ?pulumi.Input.mapOptionalInputValue<ProfileContainerNetworkInterface, Map<String, dynamic>>(containerNetworkInterface, (value) => value.toMap()),
      'containerNetworkInterfaceIds': ?containerNetworkInterfaceIds,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ProfileState.fromMap(Map<String, dynamic> map) {
    return ProfileState(
      containerNetworkInterface: map['containerNetworkInterface'] == null ? null : (ProfileContainerNetworkInterface.fromMap((map['containerNetworkInterface'] as Map).cast<String, dynamic>())).input(),
      containerNetworkInterfaceIds: map['containerNetworkInterfaceIds'] == null ? null : ((map['containerNetworkInterfaceIds'] as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

