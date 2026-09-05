// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_resource_group_resource_group_args_doc}
/// The set of arguments for ResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_core_resource_group_resource_group_args_doc}
class ResourceGroupArgs {
  /// The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  final pulumi.Input<String?>? location;
  /// The ID of the resource or application that manages this Resource Group.
  final pulumi.Input<String?>? managedBy;
  /// The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created.
  final pulumi.Input<String?>? name;
  /// A mapping of tags which should be assigned to the Resource Group.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ResourceGroupArgs].
  /// [location] The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  /// [managedBy] The ID of the resource or application that manages this Resource Group.
  /// [name] The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created.
  /// [tags] A mapping of tags which should be assigned to the Resource Group.
  const ResourceGroupArgs({
    this.location,
    this.managedBy,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managedBy': ?managedBy,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory ResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGroupArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
