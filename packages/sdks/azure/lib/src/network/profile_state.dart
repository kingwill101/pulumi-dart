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
    pulumi.Output<ProfileContainerNetworkInterface>? containerNetworkInterface,
    pulumi.Output<List<String>>? containerNetworkInterfaceIds,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      containerNetworkInterface = pulumi.Input.asOptionalInput<ProfileContainerNetworkInterface>(containerNetworkInterface),
      containerNetworkInterfaceIds = pulumi.Input.asOptionalInput<List<String>>(containerNetworkInterfaceIds),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      containerNetworkInterface: map['containerNetworkInterface'] == null ? null : pulumi.Output.create<ProfileContainerNetworkInterface>(ProfileContainerNetworkInterface.fromMap((map['containerNetworkInterface'] as Map).cast<String, dynamic>())),
      containerNetworkInterfaceIds: map['containerNetworkInterfaceIds'] == null ? null : pulumi.Output.create<List<String>>((map['containerNetworkInterfaceIds'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

