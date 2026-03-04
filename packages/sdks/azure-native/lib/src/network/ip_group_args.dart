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
    this.id,
    this.ipAddresses,
    this.ipGroupsName,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

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
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddresses: (() {
        final guardedValue = map['ipAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipGroupsName: (() {
        final guardedValue = map['ipGroupsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
