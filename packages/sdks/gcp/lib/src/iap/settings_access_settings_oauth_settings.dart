// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsAccessSettingsOauthSettings {
  /// OAuth 2.0 client ID used in the OAuth flow to generate an access token. If this field is set, you can skip obtaining the OAuth credentials in this.
  final pulumi.Input<String?>? clientId;
  /// OAuth secret paired with client ID.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? clientSecret;
  /// (Output)
  /// OAuth secret sha256 paired with client ID.
  final pulumi.Input<String?>? clientSecretSha256;
  /// Domain hint to send as hd=? parameter in OAuth request flow.
  /// Enables redirect to primary IDP by skipping Google's login screen.
  /// (https://developers.google.com/identity/protocols/OpenIDConnect#hd-param)
  /// Note: IAP does not verify that the id token's hd claim matches this value
  /// since access behavior is managed by IAM policies.
  /// * loginHint setting is not a replacement for access control. Always enforce an appropriate access policy if you want to restrict access to users outside your domain.
  final pulumi.Input<String?>? loginHint;
  /// List of client ids allowed to use IAP programmatically.
  final pulumi.Input<List<String>?>? programmaticClients;

  /// Creates a new [SettingsAccessSettingsOauthSettings].
  /// [clientId] OAuth 2.0 client ID used in the OAuth flow to generate an access token. If this field is set, you can skip obtaining the OAuth credentials in this.
  /// [clientSecret] OAuth secret paired with client ID.
  /// [clientSecretSha256] (Output)
  /// [loginHint] Domain hint to send as hd=? parameter in OAuth request flow.
  /// [programmaticClients] List of client ids allowed to use IAP programmatically.
  const SettingsAccessSettingsOauthSettings({
    this.clientId,
    this.clientSecret,
    this.clientSecretSha256,
    this.loginHint,
    this.programmaticClients,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'clientSecretSha256': ?clientSecretSha256,
      'loginHint': ?loginHint,
      'programmaticClients': ?programmaticClients,
    };
  }

  factory SettingsAccessSettingsOauthSettings.fromMap(Map<String, dynamic> map) {
    return SettingsAccessSettingsOauthSettings(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretSha256: (() { final guardedValue = map['clientSecretSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginHint: (() { final guardedValue = map['loginHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      programmaticClients: (() { final guardedValue = map['programmaticClients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
