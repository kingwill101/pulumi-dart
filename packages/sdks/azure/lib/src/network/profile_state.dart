// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_container_network_interface.dart';

/// Input properties used for looking up and filtering Profile resources.
class ProfileState {
  /// A `containerNetworkInterface` block as documented below.
  final pulumi.Input<ProfileContainerNetworkInterface?>? containerNetworkInterface;
  /// A list of Container Network Interface IDs.
  final pulumi.Input<List<String>?>? containerNetworkInterfaceIds;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the Network Profile. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ProfileState].
  /// [containerNetworkInterface] A `containerNetworkInterface` block as documented below.
  /// [containerNetworkInterfaceIds] A list of Container Network Interface IDs.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Network Profile. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags assigned to the resource.
  const ProfileState({
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
      containerNetworkInterface: (() { final guardedValue = map['containerNetworkInterface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProfileContainerNetworkInterface.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerNetworkInterfaceIds: (() { final guardedValue = map['containerNetworkInterfaceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
