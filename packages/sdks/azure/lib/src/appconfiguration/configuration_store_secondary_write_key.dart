// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationStoreSecondaryWriteKey {
  /// The Connection String for this Access Key - consisting of the Endpoint, ID, and Secret.
  final String? connectionString;
  /// The ID of the Access Key.
  final String? id;
  /// The Secret of the Access Key.
  final String? secret;

  /// Creates a new [ConfigurationStoreSecondaryWriteKey].
  /// [connectionString] The Connection String for this Access Key - consisting of the Endpoint, ID, and Secret.
  /// [id] The ID of the Access Key.
  /// [secret] The Secret of the Access Key.
  ConfigurationStoreSecondaryWriteKey({
    this.connectionString,
    this.id,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'id': ?id,
      'secret': ?secret,
    };
  }

  factory ConfigurationStoreSecondaryWriteKey.fromMap(Map<String, dynamic> map) {
    return ConfigurationStoreSecondaryWriteKey(
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      secret: map['secret'] == null ? null : map['secret'] as String,
    );
  }
}

