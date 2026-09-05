// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlotAuthSettingsActiveDirectory {
  /// Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  final pulumi.Input<List<String>?>? allowedAudiences;
  /// The Client ID of this relying party application. Enables OpenIDConnection authentication with Azure Active Directory.
  final pulumi.Input<String> clientId;
  /// The Client Secret of this relying party application. If no secret is provided, implicit flow will be used.
  final pulumi.Input<String?>? clientSecret;

  /// Creates a new [SlotAuthSettingsActiveDirectory].
  /// [allowedAudiences] Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  /// [clientId] The Client ID of this relying party application. Enables OpenIDConnection authentication with Azure Active Directory.
  /// [clientSecret] The Client Secret of this relying party application. If no secret is provided, implicit flow will be used.
  const SlotAuthSettingsActiveDirectory({
    this.allowedAudiences,
    required this.clientId,
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'clientId': clientId,
      'clientSecret': ?clientSecret,
    };
  }

  factory SlotAuthSettingsActiveDirectory.fromMap(Map<String, dynamic> map) {
    return SlotAuthSettingsActiveDirectory(
      allowedAudiences: (() { final guardedValue = map['allowedAudiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
