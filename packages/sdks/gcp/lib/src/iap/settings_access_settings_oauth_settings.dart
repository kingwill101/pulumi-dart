// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsAccessSettingsOauthSettings {
  /// Domain hint to send as hd=? parameter in OAuth request flow.
  /// Enables redirect to primary IDP by skipping Google's login screen.
  /// (https://developers.google.com/identity/protocols/OpenIDConnect#hd-param)
  /// Note: IAP does not verify that the id token's hd claim matches this value
  /// since access behavior is managed by IAM policies.
  /// * loginHint setting is not a replacement for access control. Always enforce an appropriate access policy if you want to restrict access to users outside your domain.
  final pulumi.Input<String>? loginHint;
  /// List of client ids allowed to use IAP programmatically.
  final pulumi.Input<List<String>>? programmaticClients;

  /// Creates a new [SettingsAccessSettingsOauthSettings].
  /// [loginHint] Domain hint to send as hd=? parameter in OAuth request flow.
  /// [programmaticClients] List of client ids allowed to use IAP programmatically.
  const SettingsAccessSettingsOauthSettings({
    this.loginHint,
    this.programmaticClients,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginHint': ?loginHint,
      'programmaticClients': ?programmaticClients,
    };
  }

  factory SettingsAccessSettingsOauthSettings.fromMap(Map<String, dynamic> map) {
    return SettingsAccessSettingsOauthSettings(
      loginHint: (() { final guardedValue = map['loginHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      programmaticClients: (() { final guardedValue = map['programmaticClients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

