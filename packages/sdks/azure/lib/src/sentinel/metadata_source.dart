// ignore_for_file: unused_element, unnecessary_cast


class MetadataSource {
  /// The id of the content source, the solution ID, Log Analytics Workspace name etc.
  final String? id;
  /// The kind of the content source. Possible values are `Community`, `LocalWorkspace`, `Solution` and `SourceRepository`.
  final String kind;
  /// The name of the content source, repo name, solution name, Log Analytics Workspace name, etc.
  final String? name;

  /// Creates a new [MetadataSource].
  /// [id] The id of the content source, the solution ID, Log Analytics Workspace name etc.
  /// [kind] The kind of the content source. Possible values are `Community`, `LocalWorkspace`, `Solution` and `SourceRepository`.
  /// [name] The name of the content source, repo name, solution name, Log Analytics Workspace name, etc.
  MetadataSource({
    this.id,
    required this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kind': kind,
      'name': ?name,
    };
  }

  factory MetadataSource.fromMap(Map<String, dynamic> map) {
    return MetadataSource(
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

