// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SAML SP (Service Provider) configuration when the project acts as the relying party to receive and accept an authentication assertion issued by a SAML identity provider.
class GoogleCloudIdentitytoolkitAdminV2SpConfig {
  /// Callback URI where responses from IDP are handled.
  final pulumi.Input<String>? callbackUri;
  /// Unique identifier for all SAML entities.
  final pulumi.Input<String>? spEntityId;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2SpConfig].
  /// [callbackUri] Callback URI where responses from IDP are handled.
  /// [spEntityId] Unique identifier for all SAML entities.
  const GoogleCloudIdentitytoolkitAdminV2SpConfig({
    this.callbackUri,
    this.spEntityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackUri': ?callbackUri,
      'spEntityId': ?spEntityId,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2SpConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2SpConfig(
      callbackUri: (() { final guardedValue = map['callbackUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spEntityId: (() { final guardedValue = map['spEntityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
