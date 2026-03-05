// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listStaticSiteSecrets.
class ListStaticSiteSecretsResult {
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Settings.
  final Map<String, String> properties;
  /// Resource type.
  final String type;

  /// Creates a new [ListStaticSiteSecretsResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [properties] Settings.
  /// [type] Resource type.
  ListStaticSiteSecretsResult({
    required this.id,
    this.kind,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': ?kind,
      'name': name,
      'properties': properties,
      'type': type,
    };
  }

  factory ListStaticSiteSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteSecretsResult(
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

