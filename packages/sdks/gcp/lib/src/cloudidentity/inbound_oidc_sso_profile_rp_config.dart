// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InboundOidcSsoProfileRpConfig {
  /// OAuth2 client ID for OIDC. Must be set together with `clientSecret`.
  final pulumi.Input<String?>? clientId;
  /// Input only. OAuth2 client secret for OIDC. Must be set together with `clientId`.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? clientSecret;
  /// (Output)
  /// The URL(s) that this client may use in authentication requests.
  final pulumi.Input<List<String>?>? redirectUris;

  /// Creates a new [InboundOidcSsoProfileRpConfig].
  /// [clientId] OAuth2 client ID for OIDC. Must be set together with `clientSecret`.
  /// [clientSecret] Input only. OAuth2 client secret for OIDC. Must be set together with `clientId`.
  /// [redirectUris] (Output)
  const InboundOidcSsoProfileRpConfig({
    this.clientId,
    this.clientSecret,
    this.redirectUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'redirectUris': ?redirectUris,
    };
  }

  factory InboundOidcSsoProfileRpConfig.fromMap(Map<String, dynamic> map) {
    return InboundOidcSsoProfileRpConfig(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUris: (() { final guardedValue = map['redirectUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
