// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebAppFunctionKeysSlot.
class ListWebAppFunctionKeysSlotResult {
  /// Resource Id.
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String? name;
  /// Settings.
  final Map<String, String>? properties;
  /// Resource type.
  final String? type;

  /// Creates a new [ListWebAppFunctionKeysSlotResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [properties] Settings.
  /// [type] Resource type.
  const ListWebAppFunctionKeysSlotResult({
    this.id,
    this.kind,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'properties': ?properties,
      'type': ?type,
    };
  }

  factory ListWebAppFunctionKeysSlotResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppFunctionKeysSlotResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
