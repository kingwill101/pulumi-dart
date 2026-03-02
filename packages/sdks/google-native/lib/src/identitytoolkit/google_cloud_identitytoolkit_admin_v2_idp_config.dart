// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_idp_certificate.dart';

/// The SAML IdP (Identity Provider) configuration when the project acts as the relying party.
class GoogleCloudIdentitytoolkitAdminV2IdpConfig {
  /// IDP's public keys for verifying signature in the assertions.
  final pulumi.Input<List<GoogleCloudIdentitytoolkitAdminV2IdpCertificate>>? idpCertificates;
  /// Unique identifier for all SAML entities.
  final pulumi.Input<String>? idpEntityId;
  /// Indicates if outbounding SAMLRequest should be signed.
  final pulumi.Input<bool>? signRequest;
  /// URL to send Authentication request to.
  final pulumi.Input<String>? ssoUrl;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2IdpConfig].
  /// [idpCertificates] IDP's public keys for verifying signature in the assertions.
  /// [idpEntityId] Unique identifier for all SAML entities.
  /// [signRequest] Indicates if outbounding SAMLRequest should be signed.
  /// [ssoUrl] URL to send Authentication request to.
  GoogleCloudIdentitytoolkitAdminV2IdpConfig({
    this.idpCertificates,
    this.idpEntityId,
    this.signRequest,
    this.ssoUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpCertificates': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudIdentitytoolkitAdminV2IdpCertificate>, List<Map<String, dynamic>>>(idpCertificates, (value) => pulumi.Input.encodeList<GoogleCloudIdentitytoolkitAdminV2IdpCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idpEntityId': ?idpEntityId,
      'signRequest': ?signRequest,
      'ssoUrl': ?ssoUrl,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2IdpConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2IdpConfig(
      idpCertificates: map['idpCertificates'] == null ? null : (pulumi.Input.decodeList<GoogleCloudIdentitytoolkitAdminV2IdpCertificate>(map['idpCertificates'], (value) => GoogleCloudIdentitytoolkitAdminV2IdpCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      idpEntityId: map['idpEntityId'] == null ? null : (map['idpEntityId'] as String).input(),
      signRequest: map['signRequest'] == null ? null : (map['signRequest'] as bool).input(),
      ssoUrl: map['ssoUrl'] == null ? null : (map['ssoUrl'] as String).input(),
    );
  }
}

