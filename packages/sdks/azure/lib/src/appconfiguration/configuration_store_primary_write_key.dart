// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationStorePrimaryWriteKey {
  /// The Connection String for this Access Key - consisting of the Endpoint, ID, and Secret.
  final pulumi.Input<String>? connectionString;

  /// The ID of the Access Key.
  final pulumi.Input<String>? id;

  /// The Secret of the Access Key.
  final pulumi.Input<String>? secret;

  /// Creates a new [ConfigurationStorePrimaryWriteKey].
  /// [connectionString] The Connection String for this Access Key - consisting of the Endpoint, ID, and Secret.
  /// [id] The ID of the Access Key.
  /// [secret] The Secret of the Access Key.
  ConfigurationStorePrimaryWriteKey({
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

  factory ConfigurationStorePrimaryWriteKey.fromMap(Map<String, dynamic> map) {
    return ConfigurationStorePrimaryWriteKey(
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secret: (() {
        final guardedValue = map['secret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
