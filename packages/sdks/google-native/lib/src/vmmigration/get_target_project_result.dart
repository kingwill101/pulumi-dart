// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTargetProject.
class GetTargetProjectResult {
  /// The time this target project resource was created (not related to when the Compute Engine project it points to was created).
  final String? createTime;
  /// The target project's description.
  final String? description;
  /// The name of the target project.
  final String? name;
  /// The target project ID (number) or project name.
  final String? project;
  /// The last time the target project resource was updated.
  final String? updateTime;

  /// Creates a new [GetTargetProjectResult].
  /// [createTime] The time this target project resource was created (not related to when the Compute Engine project it points to was created).
  /// [description] The target project's description.
  /// [name] The name of the target project.
  /// [project] The target project ID (number) or project name.
  /// [updateTime] The last time the target project resource was updated.
  const GetTargetProjectResult({
    this.createTime,
    this.description,
    this.name,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory GetTargetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetTargetProjectResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
