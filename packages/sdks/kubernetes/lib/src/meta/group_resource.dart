// ignore_for_file: unused_element, unnecessary_cast


/// GroupResource specifies a Group and a Resource, but does not force a version.  This is useful for identifying concepts during lookup stages without having partially valid types
class GroupResource {
  final String group;
  final String resource;

  /// Creates a new [GroupResource].
  /// [group] Required.
  /// [resource] Required.
  GroupResource({
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
      group: map['group'] as String,
      resource: map['resource'] as String,
    );
  }
}

