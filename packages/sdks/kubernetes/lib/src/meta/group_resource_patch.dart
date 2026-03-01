// ignore_for_file: unused_element, unnecessary_cast


/// GroupResource specifies a Group and a Resource, but does not force a version.  This is useful for identifying concepts during lookup stages without having partially valid types
class GroupResourcePatch {
  final String? group;
  final String? resource;

  /// Creates a new [GroupResourcePatch].
  /// [group] Optional.
  /// [resource] Optional.
  GroupResourcePatch({
    this.group,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'resource': ?resource,
    };
  }

  factory GroupResourcePatch.fromMap(Map<String, dynamic> map) {
    return GroupResourcePatch(
      group: map['group'] == null ? null : map['group'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
    );
  }
}

