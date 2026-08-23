// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConfig.
class GetConfigResult {
  final String deletionPolicy;
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? project;

  /// Creates a new [GetConfigResult].
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [project] Optional.
  const GetConfigResult({
    required this.deletionPolicy,
    required this.description,
    required this.id,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': deletionPolicy,
      'description': description,
      'id': id,
      'name': name,
      'project': ?project,
    };
  }

  factory GetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetConfigResult(
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
