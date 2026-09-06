// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listNamespaceKeys.
class ListNamespaceKeysResult {
  /// Gets or sets keyName of the created AuthorizationRule
  final String? keyName;
  /// Gets or sets primaryConnectionString of the AuthorizationRule.
  final String? primaryConnectionString;
  /// Gets or sets primaryKey of the created AuthorizationRule.
  final String? primaryKey;
  /// Gets or sets secondaryConnectionString of the created
  /// AuthorizationRule
  final String? secondaryConnectionString;
  /// Gets or sets secondaryKey of the created AuthorizationRule
  final String? secondaryKey;

  /// Creates a new [ListNamespaceKeysResult].
  /// [keyName] Gets or sets keyName of the created AuthorizationRule
  /// [primaryConnectionString] Gets or sets primaryConnectionString of the AuthorizationRule.
  /// [primaryKey] Gets or sets primaryKey of the created AuthorizationRule.
  /// [secondaryConnectionString] Gets or sets secondaryConnectionString of the created
  /// [secondaryKey] Gets or sets secondaryKey of the created AuthorizationRule
  const ListNamespaceKeysResult({
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

  factory ListNamespaceKeysResult.fromMap(Map<String, dynamic> map) {
    return ListNamespaceKeysResult(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
