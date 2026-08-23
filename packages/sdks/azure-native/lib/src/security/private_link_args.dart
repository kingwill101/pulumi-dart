// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_private_link_args_doc}
/// The set of arguments for PrivateLink.
/// {@endtemplate}
/// {@macro pulumi_security_private_link_args_doc}
class PrivateLinkArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the private link resource. Must be unique within the resource group and follow Azure naming conventions.
  final pulumi.Input<String>? privateLinkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateLinkArgs].
  /// [location] The geo-location where the resource lives
  /// [privateLinkName] The name of the private link resource. Must be unique within the resource group and follow Azure naming conventions.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const PrivateLinkArgs({
    this.location,
    this.privateLinkName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'privateLinkName': ?privateLinkName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PrivateLinkArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkName: (() { final guardedValue = map['privateLinkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
