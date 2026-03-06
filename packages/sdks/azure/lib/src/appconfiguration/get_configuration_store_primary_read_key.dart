// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationStorePrimaryReadKey {
  /// The Connection String for this Access Key - consisting of the Endpoint, ID and Secret.
  final pulumi.Input<String> connectionString;
  /// The ID of the Access Key.
  final pulumi.Input<String> id;
  /// The Secret of the Access Key.
  final pulumi.Input<String> secret;

  /// Creates a new [GetConfigurationStorePrimaryReadKey].
  /// [connectionString] The Connection String for this Access Key - consisting of the Endpoint, ID and Secret.
  /// [id] The ID of the Access Key.
  /// [secret] The Secret of the Access Key.
  const GetConfigurationStorePrimaryReadKey({
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

  factory GetConfigurationStorePrimaryReadKey.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStorePrimaryReadKey(
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      secret: pulumi.Input.fromValue(map['secret'] as String),
    );
  }
}

