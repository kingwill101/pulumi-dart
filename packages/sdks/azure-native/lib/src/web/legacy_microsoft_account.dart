// ignore_for_file: unused_element, unnecessary_cast

import 'allowed_audiences_validation.dart';
import 'client_registration.dart';
import 'login_scopes.dart';

/// The configuration settings of the legacy Microsoft Account provider.
class LegacyMicrosoftAccount {
  /// <code>false</code> if the legacy Microsoft Account provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final bool? enabled;
  /// The configuration settings of the login flow.
  final LoginScopes? login;
  /// The configuration settings of the app registration for the legacy Microsoft Account provider.
  final ClientRegistration? registration;
  /// The configuration settings of the legacy Microsoft Account provider token validation flow.
  final AllowedAudiencesValidation? validation;

  /// Creates a new [LegacyMicrosoftAccount].
  /// [enabled] <code>false</code> if the legacy Microsoft Account provider should not be enabled despite the set registration; otherwise, <code>true</code>.
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
      'login': ?login == null ? null : login!.toMap(),
      'registration': ?registration == null ? null : registration!.toMap(),
      'validation': ?validation == null ? null : validation!.toMap(),
    };
  }

  factory LegacyMicrosoftAccount.fromMap(Map<String, dynamic> map) {
    return LegacyMicrosoftAccount(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      login: map['login'] == null ? null : LoginScopes.fromMap((map['login'] as Map).cast<String, dynamic>()),
      registration: map['registration'] == null ? null : ClientRegistration.fromMap((map['registration'] as Map).cast<String, dynamic>()),
      validation: map['validation'] == null ? null : AllowedAudiencesValidation.fromMap((map['validation'] as Map).cast<String, dynamic>()),
    );
  }
}

