// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceGroup resources.
class ResourceGroupState {
  /// The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  final pulumi.Input<String>? location;
  /// The ID of the resource or application that manages this Resource Group.
  final pulumi.Input<String>? managedBy;
  /// The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Resource Group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceGroupState].
  /// [location] The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created.
  /// [managedBy] The ID of the resource or application that manages this Resource Group.
  /// [name] The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created.
  /// [tags] A mapping of tags which should be assigned to the Resource Group.
  ResourceGroupState({
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

  factory ResourceGroupState.fromMap(Map<String, dynamic> map) {
    return ResourceGroupState(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedBy: map['managedBy'] == null ? null : (map['managedBy']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

