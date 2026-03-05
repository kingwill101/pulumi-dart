// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listAppServicePlanHybridConnectionKeys.
class ListAppServicePlanHybridConnectionKeysResult {
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

  /// Creates a new [ListAppServicePlanHybridConnectionKeysResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [sendKeyName] The name of the send key.
  /// [sendKeyValue] The value of the send key.
  /// [type] Resource type.
  ListAppServicePlanHybridConnectionKeysResult({
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

  factory ListAppServicePlanHybridConnectionKeysResult.fromMap(Map<String, dynamic> map) {
    return ListAppServicePlanHybridConnectionKeysResult(
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      sendKeyName: map['sendKeyName'] as String,
      sendKeyValue: map['sendKeyValue'] as String,
      type: map['type'] as String,
    );
  }
}

