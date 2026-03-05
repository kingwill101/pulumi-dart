// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_audiences_validation.dart';
import 'client_registration.dart';
import 'login_scopes.dart';

/// The configuration settings of the legacy Microsoft Account provider.
class LegacyMicrosoftAccount {
  /// &lt;code&gt;false&lt;/code&gt; if the legacy Microsoft Account provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the login flow.
  final pulumi.Input<LoginScopes>? login;
  /// The configuration settings of the app registration for the legacy Microsoft Account provider.
  final pulumi.Input<ClientRegistration>? registration;
  /// The configuration settings of the legacy Microsoft Account provider token validation flow.
  final pulumi.Input<AllowedAudiencesValidation>? validation;

  /// Creates a new [LegacyMicrosoftAccount].
  /// [enabled] &lt;code&gt;false&lt;/code&gt; if the legacy Microsoft Account provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the app registration for the legacy Microsoft Account provider.
  /// [validation] The configuration settings of the legacy Microsoft Account provider token validation flow.
  LegacyMicrosoftAccount({
    this.enabled,
    this.login,
    this.registration,
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'login': ?pulumi.Input.mapOptionalInputValue<LoginScopes, Map<String, dynamic>>(login, (value) => value.toMap()),
      'registration': ?pulumi.Input.mapOptionalInputValue<ClientRegistration, Map<String, dynamic>>(registration, (value) => value.toMap()),
      'validation': ?pulumi.Input.mapOptionalInputValue<AllowedAudiencesValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory LegacyMicrosoftAccount.fromMap(Map<String, dynamic> map) {
    return LegacyMicrosoftAccount(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoginScopes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registration: (() { final guardedValue = map['registration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientRegistration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validation: (() { final guardedValue = map['validation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllowedAudiencesValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

