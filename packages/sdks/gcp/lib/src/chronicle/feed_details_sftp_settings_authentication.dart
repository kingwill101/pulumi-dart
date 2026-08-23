// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsSftpSettingsAuthentication {
  /// Password. Used for username and password authentication.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;
  /// Private key. Used for private key authentication.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? privateKey;
  /// Private key passphrase. Used for private key authentication.
  final pulumi.Input<String>? privateKeyPassphrase;
  /// Username. Used for username and password authentication.
  final pulumi.Input<String>? username;

  /// Creates a new [FeedDetailsSftpSettingsAuthentication].
  /// [password] Password. Used for username and password authentication.
  /// [privateKey] Private key. Used for private key authentication.
  /// [privateKeyPassphrase] Private key passphrase. Used for private key authentication.
  /// [username] Username. Used for username and password authentication.
  const FeedDetailsSftpSettingsAuthentication({
    this.password,
    this.privateKey,
    this.privateKeyPassphrase,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'privateKey': ?privateKey,
      'privateKeyPassphrase': ?privateKeyPassphrase,
      'username': ?username,
    };
  }

  factory FeedDetailsSftpSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsSftpSettingsAuthentication(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPassphrase: (() { final guardedValue = map['privateKeyPassphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
