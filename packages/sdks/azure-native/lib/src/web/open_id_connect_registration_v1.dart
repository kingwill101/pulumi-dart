// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_id_connect_client_credential_v1.dart';
import 'open_id_connect_config.dart';

/// The configuration settings of the app registration for the custom Open ID Connect provider.
class OpenIdConnectRegistrationV1 {
  /// The authentication credentials of the custom Open ID Connect provider.
  final pulumi.Input<OpenIdConnectClientCredentialV1?>? clientCredential;
  /// The client id of the custom Open ID Connect provider.
  final pulumi.Input<String?>? clientId;
  /// The configuration settings of the endpoints used for the custom Open ID Connect provider.
  final pulumi.Input<OpenIdConnectConfig?>? openIdConnectConfiguration;

  /// Creates a new [OpenIdConnectRegistrationV1].
  /// [clientCredential] The authentication credentials of the custom Open ID Connect provider.
  /// [clientId] The client id of the custom Open ID Connect provider.
  /// [openIdConnectConfiguration] The configuration settings of the endpoints used for the custom Open ID Connect provider.
  const OpenIdConnectRegistrationV1({
    this.clientCredential,
    this.clientId,
    this.openIdConnectConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCredential': ?pulumi.Input.mapOptionalInputValue<OpenIdConnectClientCredentialV1, Map<String, dynamic>>(clientCredential, (value) => value.toMap()),
      'clientId': ?clientId,
      'openIdConnectConfiguration': ?pulumi.Input.mapOptionalInputValue<OpenIdConnectConfig, Map<String, dynamic>>(openIdConnectConfiguration, (value) => value.toMap()),
    };
  }

  factory OpenIdConnectRegistrationV1.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectRegistrationV1(
      clientCredential: (() { final guardedValue = map['clientCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenIdConnectClientCredentialV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openIdConnectConfiguration: (() { final guardedValue = map['openIdConnectConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenIdConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
