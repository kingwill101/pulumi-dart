// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_audiences_validation_response.dart';
import 'client_registration_response.dart';
import 'login_scopes_response.dart';

/// The configuration settings of the Google provider.
class GoogleResponse {
  /// <code>false</code> if the Google provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the login flow.
  final pulumi.Input<LoginScopesResponse>? login;
  /// The configuration settings of the app registration for the Google provider.
  final pulumi.Input<ClientRegistrationResponse>? registration;
  /// The configuration settings of the Azure Active Directory token validation flow.
  final pulumi.Input<AllowedAudiencesValidationResponse>? validation;

  /// Creates a new [GoogleResponse].
  /// [enabled] <code>false</code> if the Google provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the app registration for the Google provider.
  /// [validation] The configuration settings of the Azure Active Directory token validation flow.
  GoogleResponse({
    this.enabled,
    this.login,
    this.registration,
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'login': ?pulumi.Input.mapOptionalInputValue<LoginScopesResponse, Map<String, dynamic>>(login, (value) => value.toMap()),
      'registration': ?pulumi.Input.mapOptionalInputValue<ClientRegistrationResponse, Map<String, dynamic>>(registration, (value) => value.toMap()),
      'validation': ?pulumi.Input.mapOptionalInputValue<AllowedAudiencesValidationResponse, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory GoogleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      login: map['login'] == null ? null : (LoginScopesResponse.fromMap((map['login']! as Map).cast<String, dynamic>())).input(),
      registration: map['registration'] == null ? null : (ClientRegistrationResponse.fromMap((map['registration']! as Map).cast<String, dynamic>())).input(),
      validation: map['validation'] == null ? null : (AllowedAudiencesValidationResponse.fromMap((map['validation']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

