// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigSignInEmail {
  /// Whether email auth is enabled for the project or not.
  final pulumi.Input<bool> enabled;

  /// Whether a password is required for email auth or not. If true, both an email and
  /// password must be provided to sign in. If false, a user may sign in via either
  /// email/password or email link.
  final pulumi.Input<bool>? passwordRequired;

  /// Creates a new [ConfigSignInEmail].
  /// [enabled] Whether email auth is enabled for the project or not.
  /// [passwordRequired] Whether a password is required for email auth or not. If true, both an email and
  ConfigSignInEmail({required this.enabled, this.passwordRequired});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'passwordRequired': ?passwordRequired,
    };
  }

  factory ConfigSignInEmail.fromMap(Map<String, dynamic> map) {
    return ConfigSignInEmail(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      passwordRequired: (() {
        final guardedValue = map['passwordRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
