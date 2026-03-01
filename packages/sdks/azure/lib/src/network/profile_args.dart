// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_container_network_interface.dart';

/// {@template pulumi_network_profile_profile_args_doc}
/// The set of arguments for Profile.
/// {@endtemplate}
/// {@macro pulumi_network_profile_profile_args_doc}
class ProfileArgs {
  /// A `container_network_interface` block as documented below.
  final pulumi.Input<ProfileContainerNetworkInterface> containerNetworkInterface;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Network Profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProfileArgs].
  /// [containerNetworkInterface] A `container_network_interface` block as documented below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Network Profile. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags assigned to the resource.
  ProfileArgs({
    required pulumi.Output<ProfileContainerNetworkInterface> containerNetworkInterface,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      containerNetworkInterface = pulumi.Input.asInput<ProfileContainerNetworkInterface>(containerNetworkInterface),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerNetworkInterface': pulumi.Input.mapInputValue<ProfileContainerNetworkInterface, Map<String, dynamic>>(containerNetworkInterface, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfileArgs(
      containerNetworkInterface: pulumi.Output.create<ProfileContainerNetworkInterface>(ProfileContainerNetworkInterface.fromMap((map['containerNetworkInterface'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

