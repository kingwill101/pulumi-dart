// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWCFRelayKeys.
class ListWCFRelayKeysResult {
  /// A string that describes the authorization rule.
  final String? keyName;
  /// Primary connection string of the created namespace authorization rule.
  final String? primaryConnectionString;
  /// A base64-encoded 256-bit primary key for signing and validating the SAS token.
  final String? primaryKey;
  /// Secondary connection string of the created namespace authorization rule.
  final String? secondaryConnectionString;
  /// A base64-encoded 256-bit secondary key for signing and validating the SAS token.
  final String? secondaryKey;

  /// Creates a new [ListWCFRelayKeysResult].
  /// [keyName] A string that describes the authorization rule.
  /// [primaryConnectionString] Primary connection string of the created namespace authorization rule.
  /// [primaryKey] A base64-encoded 256-bit primary key for signing and validating the SAS token.
  /// [secondaryConnectionString] Secondary connection string of the created namespace authorization rule.
  /// [secondaryKey] A base64-encoded 256-bit secondary key for signing and validating the SAS token.
  ListWCFRelayKeysResult({
    this.keyName,
    this.primaryConnectionString,
    this.primaryKey,
    this.secondaryConnectionString,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryKey': ?primaryKey,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory ListWCFRelayKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWCFRelayKeysResult(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      primaryConnectionString: map['primaryConnectionString'] == null ? null : map['primaryConnectionString'] as String,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : map['secondaryConnectionString'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
    );
  }
}

