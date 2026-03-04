// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_provider.dart';
import 'authentication_rule.dart';

/// `Authentication` defines the authentication configuration for API methods provided by an API service. Example: name: calendar.googleapis.com authentication: providers: - id: google_calendar_auth jwks_uri: https://www.googleapis.com/oauth2/v1/certs issuer: https://securetoken.google.com rules: - selector: "*" requirements: provider_id: google_calendar_auth - selector: google.calendar.Delegate oauth: canonical_scopes: https://www.googleapis.com/auth/calendar.read
class Authentication {
  /// Defines a set of authentication providers that a service supports.
  final pulumi.Input<List<AuthProvider>>? providers;

  /// A list of authentication rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final pulumi.Input<List<AuthenticationRule>>? rules;

  /// Creates a new [Authentication].
  /// [providers] Defines a set of authentication providers that a service supports.
  /// [rules] A list of authentication rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  Authentication({this.providers, this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providers':
          ?pulumi.Input.mapOptionalInputValue<
            List<AuthProvider>,
            List<Map<String, dynamic>>
          >(
            providers,
            (value) =>
                pulumi.Input.encodeList<AuthProvider, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<AuthenticationRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  AuthenticationRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory Authentication.fromMap(Map<String, dynamic> map) {
    return Authentication(
      providers: (() {
        final guardedValue = map['providers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AuthProvider>(
            guardedValue,
            (value) =>
                AuthProvider.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AuthenticationRule>(
            guardedValue,
            (value) => AuthenticationRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
