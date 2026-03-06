// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebPubSubKeys.
class ListWebPubSubKeysResult {
  /// Connection string constructed via the primaryKey
  final String? primaryConnectionString;
  /// The primary access key.
  final String? primaryKey;
  /// Connection string constructed via the secondaryKey
  final String? secondaryConnectionString;
  /// The secondary access key.
  final String? secondaryKey;

  /// Creates a new [ListWebPubSubKeysResult].
  /// [primaryConnectionString] Connection string constructed via the primaryKey
  /// [primaryKey] The primary access key.
  /// [secondaryConnectionString] Connection string constructed via the secondaryKey
  /// [secondaryKey] The secondary access key.
  const ListWebPubSubKeysResult({
    this.primaryConnectionString,
    this.primaryKey,
    this.secondaryConnectionString,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryConnectionString': ?primaryConnectionString,
      'primaryKey': ?primaryKey,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory ListWebPubSubKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWebPubSubKeysResult(
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

