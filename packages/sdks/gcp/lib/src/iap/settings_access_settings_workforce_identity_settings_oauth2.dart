// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsAccessSettingsWorkforceIdentitySettingsOauth2 {
  /// The OAuth 2.0 client ID registered in the workforce identity
  /// federation OAuth 2.0 Server.
  final pulumi.Input<String>? clientId;
  /// Input only. The OAuth 2.0 client secret created while registering
  /// the client ID.
  final pulumi.Input<String>? clientSecret;
  /// Output only. SHA256 hash value for the client secret. This field
  /// is returned by IAP when the settings are retrieved.
  final pulumi.Input<String>? clientSecretSha256;

  /// Creates a new [SettingsAccessSettingsWorkforceIdentitySettingsOauth2].
  /// [clientId] The OAuth 2.0 client ID registered in the workforce identity
  /// [clientSecret] Input only. The OAuth 2.0 client secret created while registering
  /// [clientSecretSha256] Output only. SHA256 hash value for the client secret. This field
  const SettingsAccessSettingsWorkforceIdentitySettingsOauth2({
    this.clientId,
    this.clientSecret,
    this.clientSecretSha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'clientSecretSha256': ?clientSecretSha256,
    };
  }

  factory SettingsAccessSettingsWorkforceIdentitySettingsOauth2.fromMap(Map<String, dynamic> map) {
    return SettingsAccessSettingsWorkforceIdentitySettingsOauth2(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretSha256: (() { final guardedValue = map['clientSecretSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

