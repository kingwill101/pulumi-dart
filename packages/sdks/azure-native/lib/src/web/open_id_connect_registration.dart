// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_id_connect_client_credential.dart';
import 'open_id_connect_config.dart';

/// The configuration settings of the app registration for the custom Open ID Connect provider.
class OpenIdConnectRegistration {
  /// The authentication credentials of the custom Open ID Connect provider.
  final pulumi.Input<OpenIdConnectClientCredential>? clientCredential;
  /// The client id of the custom Open ID Connect provider.
  final pulumi.Input<String>? clientId;
  /// The configuration settings of the endpoints used for the custom Open ID Connect provider.
  final pulumi.Input<OpenIdConnectConfig>? openIdConnectConfiguration;

  /// Creates a new [OpenIdConnectRegistration].
  /// [clientCredential] The authentication credentials of the custom Open ID Connect provider.
  /// [clientId] The client id of the custom Open ID Connect provider.
  /// [openIdConnectConfiguration] The configuration settings of the endpoints used for the custom Open ID Connect provider.
  OpenIdConnectRegistration({
    this.clientCredential,
    this.clientId,
    this.openIdConnectConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCredential': ?pulumi.Input.mapOptionalInputValue<OpenIdConnectClientCredential, Map<String, dynamic>>(clientCredential, (value) => value.toMap()),
      'clientId': ?clientId,
      'openIdConnectConfiguration': ?pulumi.Input.mapOptionalInputValue<OpenIdConnectConfig, Map<String, dynamic>>(openIdConnectConfiguration, (value) => value.toMap()),
    };
  }

  factory OpenIdConnectRegistration.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectRegistration(
      clientCredential: map['clientCredential'] == null ? null : (OpenIdConnectClientCredential.fromMap((map['clientCredential']! as Map).cast<String, dynamic>())).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      openIdConnectConfiguration: map['openIdConnectConfiguration'] == null ? null : (OpenIdConnectConfig.fromMap((map['openIdConnectConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

