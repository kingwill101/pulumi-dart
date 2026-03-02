// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listStaticSiteConfiguredRoles.
class ListStaticSiteConfiguredRolesResult {
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// List of string resources.
  final List<String> properties;
  /// Resource type.
  final String type;

  /// Creates a new [ListStaticSiteConfiguredRolesResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [properties] List of string resources.
  /// [type] Resource type.
  ListStaticSiteConfiguredRolesResult({
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

  factory ListStaticSiteConfiguredRolesResult.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteConfiguredRolesResult(
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      name: map['name'] as String,
      properties: (map['properties'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

