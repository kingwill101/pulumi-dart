// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The names of the group, the version, and the resource.
class GroupVersionResourcePatch {
  /// The name of the group.
  final pulumi.Input<String>? group;
  /// The name of the resource.
  final pulumi.Input<String>? resource;
  /// The name of the version.
  final pulumi.Input<String>? version;

  /// Creates a new [GroupVersionResourcePatch].
  /// [group] The name of the group.
  /// [resource] The name of the resource.
  /// [version] The name of the version.
  GroupVersionResourcePatch({
    this.group,
    this.resource,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'resource': ?resource,
      'version': ?version,
    };
  }

  factory GroupVersionResourcePatch.fromMap(Map<String, dynamic> map) {
    return GroupVersionResourcePatch(
      group: map['group'] == null ? null : (map['group']! as String).input(),
      resource: map['resource'] == null ? null : (map['resource']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

