// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationDestinationAuthToken {
  /// The prefix of the URL.
  final pulumi.Input<String>? prefix;
  /// Specifies the token for integrating.
  final pulumi.Input<String> token;

  /// Creates a new [NotificationDestinationAuthToken].
  /// [prefix] The prefix of the URL.
  /// [token] Specifies the token for integrating.
  NotificationDestinationAuthToken({
    this.prefix,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'token': token,
    };
  }

  factory NotificationDestinationAuthToken.fromMap(Map<String, dynamic> map) {
    return NotificationDestinationAuthToken(
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}

