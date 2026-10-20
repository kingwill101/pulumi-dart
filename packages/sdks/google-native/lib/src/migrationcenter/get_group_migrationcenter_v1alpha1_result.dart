// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGroup.
class GetGroupMigrationcenterV1alpha1Result {
  /// The timestamp when the group was created.
  final String? createTime;
  /// Optional. The description of the group.
  final String? description;
  /// Optional. User-friendly display name.
  final String? displayName;
  /// Labels as key value pairs.
  final Map<String, String>? labels;
  /// The name of the group.
  final String? name;
  /// The timestamp when the group was last updated.
  final String? updateTime;

  /// Creates a new [GetGroupMigrationcenterV1alpha1Result].
  /// [createTime] The timestamp when the group was created.
  /// [description] Optional. The description of the group.
  /// [displayName] Optional. User-friendly display name.
  /// [labels] Labels as key value pairs.
  /// [name] The name of the group.
  /// [updateTime] The timestamp when the group was last updated.
  const GetGroupMigrationcenterV1alpha1Result({
    this.createTime,
    this.description,
    this.displayName,
    this.labels,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetGroupMigrationcenterV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetGroupMigrationcenterV1alpha1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
