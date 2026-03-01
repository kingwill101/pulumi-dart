// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_idp_certificate_response.dart';

/// The SAML IdP (Identity Provider) configuration when the project acts as the relying party.
class GoogleCloudIdentitytoolkitAdminV2IdpConfigResponse {
  /// IDP's public keys for verifying signature in the assertions.
  final List<GoogleCloudIdentitytoolkitAdminV2IdpCertificateResponse> idpCertificates;
  /// Unique identifier for all SAML entities.
  final String idpEntityId;
  /// Indicates if outbounding SAMLRequest should be signed.
  final bool signRequest;
  /// URL to send Authentication request to.
  final String ssoUrl;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2IdpConfigResponse].
  /// [idpCertificates] IDP's public keys for verifying signature in the assertions.
  /// [idpEntityId] Unique identifier for all SAML entities.
  /// [signRequest] Indicates if outbounding SAMLRequest should be signed.
  /// [ssoUrl] URL to send Authentication request to.
  GoogleCloudIdentitytoolkitAdminV2IdpConfigResponse({
    required this.idpCertificates,
    required this.idpEntityId,
    required this.signRequest,
    required this.ssoUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpCertificates': pulumi.Input.encodeList<GoogleCloudIdentitytoolkitAdminV2IdpCertificateResponse, Map<String, dynamic>>(idpCertificates, (value) => value.toMap()),
      'idpEntityId': idpEntityId,
      'signRequest': signRequest,
      'ssoUrl': ssoUrl,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2IdpConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2IdpConfigResponse(
      idpCertificates: pulumi.Input.decodeList<GoogleCloudIdentitytoolkitAdminV2IdpCertificateResponse>(map['idpCertificates'], (value) => GoogleCloudIdentitytoolkitAdminV2IdpCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      idpEntityId: map['idpEntityId'] as String,
      signRequest: map['signRequest'] as bool,
      ssoUrl: map['ssoUrl'] as String,
    );
  }
}

