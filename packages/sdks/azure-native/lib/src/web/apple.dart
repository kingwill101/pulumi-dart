// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apple_registration.dart';
import 'login_scopes.dart';

/// The configuration settings of the Apple provider.
class Apple {
  /// <code>false</code> if the Apple provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the login flow.
  final pulumi.Input<LoginScopes>? login;
  /// The configuration settings of the Apple registration.
  final pulumi.Input<AppleRegistration>? registration;

  /// Creates a new [Apple].
  /// [enabled] <code>false</code> if the Apple provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the Apple registration.
  Apple({
    this.enabled,
    this.login,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'login': ?pulumi.Input.mapOptionalInputValue<LoginScopes, Map<String, dynamic>>(login, (value) => value.toMap()),
      'registration': ?pulumi.Input.mapOptionalInputValue<AppleRegistration, Map<String, dynamic>>(registration, (value) => value.toMap()),
    };
  }

  factory Apple.fromMap(Map<String, dynamic> map) {
    return Apple(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      login: map['login'] == null ? null : (LoginScopes.fromMap((map['login'] as Map).cast<String, dynamic>())).input(),
      registration: map['registration'] == null ? null : (AppleRegistration.fromMap((map['registration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

