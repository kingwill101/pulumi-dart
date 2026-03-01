// ignore_for_file: unused_element, unnecessary_cast


class GetConfigurationStorePrimaryWriteKey {
  /// The Connection String for this Access Key - consisting of the Endpoint, ID and Secret.
  final String connectionString;
  /// The ID of the Access Key.
  final String id;
  /// The Secret of the Access Key.
  final String secret;

  /// Creates a new [GetConfigurationStorePrimaryWriteKey].
  /// [connectionString] The Connection String for this Access Key - consisting of the Endpoint, ID and Secret.
  /// [id] The ID of the Access Key.
  /// [secret] The Secret of the Access Key.
  GetConfigurationStorePrimaryWriteKey({
    required this.connectionString,
    required this.id,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'id': id,
      'secret': secret,
    };
  }

  factory GetConfigurationStorePrimaryWriteKey.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStorePrimaryWriteKey(
      connectionString: map['connectionString'] as String,
      id: map['id'] as String,
      secret: map['secret'] as String,
    );
  }
}

