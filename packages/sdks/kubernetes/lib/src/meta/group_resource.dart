// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GroupResource specifies a Group and a Resource, but does not force a version.  This is useful for identifying concepts during lookup stages without having partially valid types
class GroupResource {
  final pulumi.Input<String> group;
  final pulumi.Input<String> resource;

  /// Creates a new [GroupResource].
  /// [group] Required.
  /// [resource] Required.
  const GroupResource({
    required this.group,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'resource': resource,
    };
  }

  factory GroupResource.fromMap(Map<String, dynamic> map) {
    return GroupResource(
      group: pulumi.Input.fromValue(map['group'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
