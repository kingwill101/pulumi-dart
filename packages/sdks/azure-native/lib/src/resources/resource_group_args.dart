// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_resource_group_args_doc}
/// The set of arguments for ResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_resources_resource_group_args_doc}
class ResourceGroupArgs {
  /// The location of the resource group. It cannot be changed after the resource group has been created. It must be one of the supported Azure locations.
  final pulumi.Input<String>? location;
  /// The ID of the resource that manages this resource group.
  final pulumi.Input<String>? managedBy;
  /// The name of the resource group to create or update. Can include alphanumeric, underscore, parentheses, hyphen, period (except at end), and Unicode characters that match the allowed characters.
  final pulumi.Input<String>? resourceGroupName;
  /// The tags attached to the resource group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceGroupArgs].
  /// [location] The location of the resource group. It cannot be changed after the resource group has been created. It must be one of the supported Azure locations.
  /// [managedBy] The ID of the resource that manages this resource group.
  /// [resourceGroupName] The name of the resource group to create or update. Can include alphanumeric, underscore, parentheses, hyphen, period (except at end), and Unicode characters that match the allowed characters.
  /// [tags] The tags attached to the resource group.
  ResourceGroupArgs({
    this.location,
    this.managedBy,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managedBy': ?managedBy,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGroupArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

