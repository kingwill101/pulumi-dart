// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebAppHostKeysSlot.
class ListWebAppHostKeysSlotResult {
  /// Host level function keys.
  final Map<String, String>? functionKeys;
  /// Secret key.
  final String? masterKey;
  /// System keys.
  final Map<String, String>? systemKeys;

  /// Creates a new [ListWebAppHostKeysSlotResult].
  /// [functionKeys] Host level function keys.
  /// [masterKey] Secret key.
  /// [systemKeys] System keys.
  ListWebAppHostKeysSlotResult({
    this.functionKeys,
    this.masterKey,
    this.systemKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionKeys': ?functionKeys,
      'masterKey': ?masterKey,
      'systemKeys': ?systemKeys,
    };
  }

  factory ListWebAppHostKeysSlotResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppHostKeysSlotResult(
      functionKeys: map['functionKeys'] == null ? null : (map['functionKeys']! as Map).cast<String, String>(),
      masterKey: map['masterKey'] == null ? null : map['masterKey']! as String,
      systemKeys: map['systemKeys'] == null ? null : (map['systemKeys']! as Map).cast<String, String>(),
    );
  }
}

