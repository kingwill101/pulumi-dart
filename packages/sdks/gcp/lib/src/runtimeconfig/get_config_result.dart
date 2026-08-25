// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConfig.
class GetConfigResult {
  final String? deletionPolicy;
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? project;

  /// Creates a new [GetConfigResult].
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [project] Optional.
  const GetConfigResult({
    this.deletionPolicy,
    this.description,
    this.id,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'project': ?project,
    };
  }

  factory GetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetConfigResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
