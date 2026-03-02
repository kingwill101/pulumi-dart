// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_id_connect_client_credential_response.dart';
import 'open_id_connect_config_response.dart';

/// The configuration settings of the app registration for the custom Open ID Connect provider.
class OpenIdConnectRegistrationResponse {
  /// The authentication credentials of the custom Open ID Connect provider.
  final pulumi.Input<OpenIdConnectClientCredentialResponse>? clientCredential;
  /// The client id of the custom Open ID Connect provider.
  final pulumi.Input<String>? clientId;
  /// The configuration settings of the endpoints used for the custom Open ID Connect provider.
  final pulumi.Input<OpenIdConnectConfigResponse>? openIdConnectConfiguration;

  /// Creates a new [OpenIdConnectRegistrationResponse].
  /// [clientCredential] The authentication credentials of the custom Open ID Connect provider.
  /// [clientId] The client id of the custom Open ID Connect provider.
  /// [openIdConnectConfiguration] The configuration settings of the endpoints used for the custom Open ID Connect provider.
  OpenIdConnectRegistrationResponse({
    this.clientCredential,
    this.clientId,
    this.openIdConnectConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCredential': ?pulumi.Input.mapOptionalInputValue<OpenIdConnectClientCredentialResponse, Map<String, dynamic>>(clientCredential, (value) => value.toMap()),
      'clientId': ?clientId,
      'openIdConnectConfiguration': ?pulumi.Input.mapOptionalInputValue<OpenIdConnectConfigResponse, Map<String, dynamic>>(openIdConnectConfiguration, (value) => value.toMap()),
    };
  }

  factory OpenIdConnectRegistrationResponse.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectRegistrationResponse(
      clientCredential: map['clientCredential'] == null ? null : (OpenIdConnectClientCredentialResponse.fromMap((map['clientCredential']! as Map).cast<String, dynamic>())).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      openIdConnectConfiguration: map['openIdConnectConfiguration'] == null ? null : (OpenIdConnectConfigResponse.fromMap((map['openIdConnectConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

