// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_provider_response.dart';
import 'authentication_rule_response.dart';

/// `Authentication` defines the authentication configuration for API methods provided by an API service. Example: name: calendar.googleapis.com authentication: providers: - id: google_calendar_auth jwks_uri: https://www.googleapis.com/oauth2/v1/certs issuer: https://securetoken.google.com rules: - selector: "*" requirements: provider_id: google_calendar_auth - selector: google.calendar.Delegate oauth: canonical_scopes: https://www.googleapis.com/auth/calendar.read
class AuthenticationResponse {
  /// Defines a set of authentication providers that a service supports.
  final pulumi.Input<List<AuthProviderResponse>> providers;
  /// A list of authentication rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final pulumi.Input<List<AuthenticationRuleResponse>> rules;

  /// Creates a new [AuthenticationResponse].
  /// [providers] Defines a set of authentication providers that a service supports.
  /// [rules] A list of authentication rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  AuthenticationResponse({
    required this.providers,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providers': pulumi.Input.mapInputValue<List<AuthProviderResponse>, List<Map<String, dynamic>>>(providers, (value) => pulumi.Input.encodeList<AuthProviderResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rules': pulumi.Input.mapInputValue<List<AuthenticationRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AuthenticationRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationResponse(
      providers: pulumi.Input.fromValue(pulumi.Input.decodeList<AuthProviderResponse>(map['providers']!, (value) => AuthProviderResponse.fromMap((value as Map).cast<String, dynamic>()))),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<AuthenticationRuleResponse>(map['rules']!, (value) => AuthenticationRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

