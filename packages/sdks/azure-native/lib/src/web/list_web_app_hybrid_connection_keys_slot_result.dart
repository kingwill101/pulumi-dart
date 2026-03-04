// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listWebAppHybridConnectionKeysSlot.
class ListWebAppHybridConnectionKeysSlotResult {
  /// Resource Id.
  final String id;

  /// Kind of resource.
  final String? kind;

  /// Resource Name.
  final String name;

  /// The name of the send key.
  final String sendKeyName;

  /// The value of the send key.
  final String sendKeyValue;

  /// Resource type.
  final String type;

  /// Creates a new [ListWebAppHybridConnectionKeysSlotResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [sendKeyName] The name of the send key.
  /// [sendKeyValue] The value of the send key.
  /// [type] Resource type.
  ListWebAppHybridConnectionKeysSlotResult({
    required this.id,
    this.kind,
    required this.name,
    required this.sendKeyName,
    required this.sendKeyValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': ?kind,
      'name': name,
      'sendKeyName': sendKeyName,
      'sendKeyValue': sendKeyValue,
      'type': type,
    };
  }

  factory ListWebAppHybridConnectionKeysSlotResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListWebAppHybridConnectionKeysSlotResult(
      id: map['id'] as String,
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      sendKeyName: map['sendKeyName'] as String,
      sendKeyValue: map['sendKeyValue'] as String,
      type: map['type'] as String,
    );
  }
}
