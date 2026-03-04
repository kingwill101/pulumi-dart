// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_resource_anchor_resource_anchor_args_doc}
/// The set of arguments for ResourceAnchor.
/// {@endtemplate}
/// {@macro pulumi_oracle_resource_anchor_resource_anchor_args_doc}
class ResourceAnchorArgs {
  /// The name which should be used for this Oracle Resource Anchor. Changing this forces a new Oracle Resource Anchor to be created.
  final pulumi.Input<String>? name;

  /// The name of the Resource Group where the Oracle Resource Anchor should exist. Changing this forces a new Oracle Resource Anchor to be created.
  final pulumi.Input<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the Oracle Resource Anchor.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceAnchorArgs].
  /// [name] The name which should be used for this Oracle Resource Anchor. Changing this forces a new Oracle Resource Anchor to be created.
  /// [resourceGroupName] The name of the Resource Group where the Oracle Resource Anchor should exist. Changing this forces a new Oracle Resource Anchor to be created.
  /// [tags] A mapping of tags which should be assigned to the Oracle Resource Anchor.
  ResourceAnchorArgs({this.name, required this.resourceGroupName, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ResourceAnchorArgs.fromMap(Map<String, dynamic> map) {
    return ResourceAnchorArgs(
      name: (() {
        final guardedValue = map['name'];
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
