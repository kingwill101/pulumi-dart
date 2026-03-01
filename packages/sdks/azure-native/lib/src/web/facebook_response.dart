// ignore_for_file: unused_element, unnecessary_cast

import 'app_registration_response.dart';
import 'login_scopes_response.dart';

/// The configuration settings of the Facebook provider.
class FacebookResponse {
  /// <code>false</code> if the Facebook provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final bool? enabled;
  /// The version of the Facebook api to be used while logging in.
  final String? graphApiVersion;
  /// The configuration settings of the login flow.
  final LoginScopesResponse? login;
  /// The configuration settings of the app registration for the Facebook provider.
  final AppRegistrationResponse? registration;

  /// Creates a new [FacebookResponse].
  /// [enabled] <code>false</code> if the Facebook provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [graphApiVersion] The version of the Facebook api to be used while logging in.
  /// [login] The configuration settings of the login flow.
  /// [registration] The configuration settings of the app registration for the Facebook provider.
  FacebookResponse({
    this.enabled,
    this.graphApiVersion,
    this.login,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'graphApiVersion': ?graphApiVersion,
      'login': ?login == null ? null : login!.toMap(),
      'registration': ?registration == null ? null : registration!.toMap(),
    };
  }

  factory FacebookResponse.fromMap(Map<String, dynamic> map) {
    return FacebookResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      graphApiVersion: map['graphApiVersion'] == null ? null : map['graphApiVersion'] as String,
      login: map['login'] == null ? null : LoginScopesResponse.fromMap((map['login'] as Map).cast<String, dynamic>()),
      registration: map['registration'] == null ? null : AppRegistrationResponse.fromMap((map['registration'] as Map).cast<String, dynamic>()),
    );
  }
}

