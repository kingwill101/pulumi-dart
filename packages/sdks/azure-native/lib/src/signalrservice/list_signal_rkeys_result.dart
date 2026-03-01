// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listSignalRKeys.
class ListSignalRKeysResult {
  /// Connection string constructed via the primaryKey
  final String? primaryConnectionString;
  /// The primary access key.
  final String? primaryKey;
  /// Connection string constructed via the secondaryKey
  final String? secondaryConnectionString;
  /// The secondary access key.
  final String? secondaryKey;

  /// Creates a new [ListSignalRKeysResult].
  /// [primaryConnectionString] Connection string constructed via the primaryKey
  /// [primaryKey] The primary access key.
  /// [secondaryConnectionString] Connection string constructed via the secondaryKey
  /// [secondaryKey] The secondary access key.
  ListSignalRKeysResult({
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

  factory ListSignalRKeysResult.fromMap(Map<String, dynamic> map) {
    return ListSignalRKeysResult(
      primaryConnectionString: map['primaryConnectionString'] == null ? null : map['primaryConnectionString'] as String,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : map['secondaryConnectionString'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
    );
  }
}

