// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationStoreSecondaryReadKey {
  /// The Connection String for this Access Key - consisting of the Endpoint, ID and Secret.
  final pulumi.Input<String> connectionString;
  /// The ID of the Access Key.
  final pulumi.Input<String> id;
  /// The Secret of the Access Key.
  final pulumi.Input<String> secret;

  /// Creates a new [GetConfigurationStoreSecondaryReadKey].
  /// [connectionString] The Connection String for this Access Key - consisting of the Endpoint, ID and Secret.
  /// [id] The ID of the Access Key.
  /// [secret] The Secret of the Access Key.
  GetConfigurationStoreSecondaryReadKey({
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

  factory GetConfigurationStoreSecondaryReadKey.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreSecondaryReadKey(
      connectionString: (map['connectionString'] as String).input(),
      id: (map['id'] as String).input(),
      secret: (map['secret'] as String).input(),
    );
  }
}

