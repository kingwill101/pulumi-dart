// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_private_link_private_link_args_doc}
/// The set of arguments for PrivateLink.
/// {@endtemplate}
/// {@macro pulumi_management_private_link_private_link_args_doc}
class PrivateLinkArgs {
  /// The Azure Region where the Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Resource Management Private Link. Changing this forces a new Resource Management Private Link to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateLinkArgs].
  /// [location] The Azure Region where the Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created.
  /// [name] Specifies the name of this Resource Management Private Link. Changing this forces a new Resource Management Private Link to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created.
  PrivateLinkArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateLinkArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

