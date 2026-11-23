// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthProviderAuthProviderTypeParamsConnectorReferenceAuthProvider {
  /// Optional. Rich Authorization Requests (RFC 9396) detailing targeted OAuth
  /// resources/scopes, formatted as a JSON array of JSON objects.
  final pulumi.Input<String?>? authorizationDetails;
  /// Required. The name of the referenced connector. For Gemini Enterprise, this
  /// is either a Data Connector name
  /// (`projects/{{project}}/locations/{{location}}/collections/{{collection}}/dataConnector`),
  /// an Authorization name
  /// (`projects/{{project}}/locations/{{location}}/authorizations/{{authorization}}`),
  /// or a connector ID (e.g. `salesforce-connector-prod`).
  final pulumi.Input<String> connector;

  /// Creates a new [AuthProviderAuthProviderTypeParamsConnectorReferenceAuthProvider].
  /// [authorizationDetails] Optional. Rich Authorization Requests (RFC 9396) detailing targeted OAuth
  /// [connector] Required. The name of the referenced connector. For Gemini Enterprise, this
  const AuthProviderAuthProviderTypeParamsConnectorReferenceAuthProvider({
    this.authorizationDetails,
    required this.connector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationDetails': ?authorizationDetails,
      'connector': connector,
    };
  }

  factory AuthProviderAuthProviderTypeParamsConnectorReferenceAuthProvider.fromMap(Map<String, dynamic> map) {
    return AuthProviderAuthProviderTypeParamsConnectorReferenceAuthProvider(
      authorizationDetails: (() { final guardedValue = map['authorizationDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connector: pulumi.Input.fromValue(map['connector'] as String),
    );
  }
}
