// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_ip_group_args_doc}
/// The set of arguments for IpGroup.
/// {@endtemplate}
/// {@macro pulumi_network_ip_group_args_doc}
class IpGroupArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// IpAddresses/IpAddressPrefixes in the IpGroups resource.
  final pulumi.Input<List<String>>? ipAddresses;
  /// The name of the ipGroups.
  final pulumi.Input<String>? ipGroupsName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpGroupArgs].
  /// [id] Resource ID.
  /// [ipAddresses] IpAddresses/IpAddressPrefixes in the IpGroups resource.
  /// [ipGroupsName] The name of the ipGroups.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  IpGroupArgs({
    pulumi.Output<String>? id,
    pulumi.Output<List<String>>? ipAddresses,
    pulumi.Output<String>? ipGroupsName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      ipAddresses = pulumi.Input.asOptionalInput<List<String>>(ipAddresses),
      ipGroupsName = pulumi.Input.asOptionalInput<String>(ipGroupsName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ipAddresses': ?ipAddresses,
      'ipGroupsName': ?ipGroupsName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IpGroupArgs.fromMap(Map<String, dynamic> map) {
    return IpGroupArgs(
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      ipAddresses: map['ipAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['ipAddresses'] as List).cast<String>()),
      ipGroupsName: map['ipGroupsName'] == null ? null : pulumi.Output.create<String>(map['ipGroupsName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

