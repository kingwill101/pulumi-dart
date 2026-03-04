// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConfig.
class GetConfigResult {
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? project;

  /// Creates a new [GetConfigResult].
  /// [description] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [project] Optional.
  GetConfigResult({
    required this.description,
    required this.id,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'name': name,
      'project': ?project,
    };
  }

  factory GetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetConfigResult(
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
