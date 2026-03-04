// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_audiences_validation_response.dart';
import 'client_registration_response.dart';
import 'login_scopes_response.dart';

/// The configuration settings of the Google provider.
class GoogleResponse {
  /// &lt;code&gt;false&lt;/code&gt; if the Google provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? enabled;

  /// The configuration settings of the login flow.
  final pulumi.Input<LoginScopesResponse>? login;

  /// The configuration settings of the app registration for the Google provider.
  final pulumi.Input<ClientRegistrationResponse>? registration;

  /// The configuration settings of the Azure Active Directory token validation flow.
  final pulumi.Input<AllowedAudiencesValidationResponse>? validation;

  /// Creates a new [GoogleResponse].
  /// [enabled] &lt;code&gt;false&lt;/code&gt; if the Google provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
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
      'login':
          ?pulumi.Input.mapOptionalInputValue<
            LoginScopesResponse,
            Map<String, dynamic>
          >(login, (value) => value.toMap()),
      'registration':
          ?pulumi.Input.mapOptionalInputValue<
            ClientRegistrationResponse,
            Map<String, dynamic>
          >(registration, (value) => value.toMap()),
      'validation':
          ?pulumi.Input.mapOptionalInputValue<
            AllowedAudiencesValidationResponse,
            Map<String, dynamic>
          >(validation, (value) => value.toMap()),
    };
  }

  factory GoogleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleResponse(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      login: (() {
        final guardedValue = map['login'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoginScopesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      registration: (() {
        final guardedValue = map['registration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClientRegistrationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      validation: (() {
        final guardedValue = map['validation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AllowedAudiencesValidationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
