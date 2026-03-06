// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apple_registration.dart';
import 'login_scopes.dart';

/// The configuration settings of the Apple provider.
class Apple {
  /// &lt;code&gt;false&lt;/code&gt; if the Apple provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the login flow.
  final pulumi.Input<LoginScopes>? login;
  /// The configuration settings of the Apple registration.
  final pulumi.Input<AppleRegistration>? registration;

  /// Creates a new [Apple].
  /// [enabled] &lt;code&gt;false&lt;/code&gt; if the Apple provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the Apple registration.
  const Apple({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoginScopes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registration: (() { final guardedValue = map['registration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppleRegistration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

