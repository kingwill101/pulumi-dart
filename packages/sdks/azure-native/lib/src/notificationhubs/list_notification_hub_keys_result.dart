// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listNotificationHubKeys.
class ListNotificationHubKeysResult {
  /// Gets or sets keyName of the created AuthorizationRule
  final String keyName;
  /// Gets or sets primaryConnectionString of the AuthorizationRule.
  final String primaryConnectionString;
  /// Gets or sets primaryKey of the created AuthorizationRule.
  final String primaryKey;
  /// Gets or sets secondaryConnectionString of the created
  /// AuthorizationRule
  final String secondaryConnectionString;
  /// Gets or sets secondaryKey of the created AuthorizationRule
  final String secondaryKey;

  /// Creates a new [ListNotificationHubKeysResult].
  /// [keyName] Gets or sets keyName of the created AuthorizationRule
  /// [primaryConnectionString] Gets or sets primaryConnectionString of the AuthorizationRule.
  /// [primaryKey] Gets or sets primaryKey of the created AuthorizationRule.
  /// [secondaryConnectionString] Gets or sets secondaryConnectionString of the created
  /// [secondaryKey] Gets or sets secondaryKey of the created AuthorizationRule
  const ListNotificationHubKeysResult({
    required this.keyName,
    required this.primaryConnectionString,
    required this.primaryKey,
    required this.secondaryConnectionString,
    required this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'primaryConnectionString': primaryConnectionString,
      'primaryKey': primaryKey,
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryKey': secondaryKey,
    };
  }

  factory ListNotificationHubKeysResult.fromMap(Map<String, dynamic> map) {
    return ListNotificationHubKeysResult(
      keyName: map['keyName'] as String,
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryKey: map['primaryKey'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryKey: map['secondaryKey'] as String,
    );
  }
}

