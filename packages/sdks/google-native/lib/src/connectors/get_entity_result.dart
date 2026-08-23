// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEntity.
class GetEntityResult {
  /// Fields of the entity. The key is name of the field and the value contains the applicable `google.protobuf.Value` entry for this field.
  final Map<String, String> fields;
  /// Resource name of the Entity. Format: projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}/entities/{id}
  final String name;

  /// Creates a new [GetEntityResult].
  /// [fields] Fields of the entity. The key is name of the field and the value contains the applicable `google.protobuf.Value` entry for this field.
  /// [name] Resource name of the Entity. Format: projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}/entities/{id}
  const GetEntityResult({
    required this.fields,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': fields,
      'name': name,
    };
  }

  factory GetEntityResult.fromMap(Map<String, dynamic> map) {
    return GetEntityResult(
      fields: (map['fields'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}
