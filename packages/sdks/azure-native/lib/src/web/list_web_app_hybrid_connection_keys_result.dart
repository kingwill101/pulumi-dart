// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebAppHybridConnectionKeys.
class ListWebAppHybridConnectionKeysResult {
  /// Resource Id.
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String? name;
  /// The name of the send key.
  final String? sendKeyName;
  /// The value of the send key.
  final String? sendKeyValue;
  /// Resource type.
  final String? type;

  /// Creates a new [ListWebAppHybridConnectionKeysResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [sendKeyName] The name of the send key.
  /// [sendKeyValue] The value of the send key.
  /// [type] Resource type.
  const ListWebAppHybridConnectionKeysResult({
    this.id,
    this.kind,
    this.name,
    this.sendKeyName,
    this.sendKeyValue,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'sendKeyName': ?sendKeyName,
      'sendKeyValue': ?sendKeyValue,
      'type': ?type,
    };
  }

  factory ListWebAppHybridConnectionKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppHybridConnectionKeysResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sendKeyName: (() { final guardedValue = map['sendKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sendKeyValue: (() { final guardedValue = map['sendKeyValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
