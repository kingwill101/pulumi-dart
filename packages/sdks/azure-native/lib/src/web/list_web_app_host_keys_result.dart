// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebAppHostKeys.
class ListWebAppHostKeysResult {
  /// Host level function keys.
  final Map<String, String>? functionKeys;
  /// Secret key.
  final String? masterKey;
  /// System keys.
  final Map<String, String>? systemKeys;

  /// Creates a new [ListWebAppHostKeysResult].
  /// [functionKeys] Host level function keys.
  /// [masterKey] Secret key.
  /// [systemKeys] System keys.
  ListWebAppHostKeysResult({
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

  factory ListWebAppHostKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppHostKeysResult(
      functionKeys: map['functionKeys'] == null ? null : (map['functionKeys'] as Map).cast<String, String>(),
      masterKey: map['masterKey'] == null ? null : map['masterKey'] as String,
      systemKeys: map['systemKeys'] == null ? null : (map['systemKeys'] as Map).cast<String, String>(),
    );
  }
}

