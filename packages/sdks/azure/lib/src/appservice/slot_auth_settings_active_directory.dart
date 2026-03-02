// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlotAuthSettingsActiveDirectory {
  /// Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  final pulumi.Input<List<String>>? allowedAudiences;
  /// The Client ID of this relying party application. Enables OpenIDConnection authentication with Azure Active Directory.
  final pulumi.Input<String> clientId;
  /// The Client Secret of this relying party application. If no secret is provided, implicit flow will be used.
  final pulumi.Input<String>? clientSecret;

  /// Creates a new [SlotAuthSettingsActiveDirectory].
  /// [allowedAudiences] Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  /// [clientId] The Client ID of this relying party application. Enables OpenIDConnection authentication with Azure Active Directory.
  /// [clientSecret] The Client Secret of this relying party application. If no secret is provided, implicit flow will be used.
  SlotAuthSettingsActiveDirectory({
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
      allowedAudiences: map['allowedAudiences'] == null ? null : ((map['allowedAudiences'] as List).cast<String>()).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
    );
  }
}

