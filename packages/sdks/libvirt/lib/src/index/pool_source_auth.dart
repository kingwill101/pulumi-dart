// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_source_auth_secret.dart';

class PoolSourceAuth {
  /// Defines the secret used for authenticated access to the storage source.
  final pulumi.Input<PoolSourceAuthSecret>? secret;

  /// Configures the type of authentication mechanism to be used on the storage source connection.
  final pulumi.Input<String> type;

  /// Sets the username for authenticating access to the storage source.
  final pulumi.Input<String> username;

  /// Creates a new [PoolSourceAuth].
  /// [secret] Defines the secret used for authenticated access to the storage source.
  /// [type] Configures the type of authentication mechanism to be used on the storage source connection.
  /// [username] Sets the username for authenticating access to the storage source.
  PoolSourceAuth({this.secret, required this.type, required this.username});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret':
          ?pulumi.Input.mapOptionalInputValue<
            PoolSourceAuthSecret,
            Map<String, dynamic>
          >(secret, (value) => value.toMap()),
      'type': type,
      'username': username,
    };
  }

  factory PoolSourceAuth.fromMap(Map<String, dynamic> map) {
    return PoolSourceAuth(
      secret: (() {
        final guardedValue = map['secret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PoolSourceAuthSecret.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
