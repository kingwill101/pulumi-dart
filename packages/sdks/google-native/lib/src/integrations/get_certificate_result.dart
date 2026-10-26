// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_client_certificate_response.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// Status of the certificate
  final String? certificateStatus;
  /// Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY
  final String? credentialId;
  /// Description of the certificate
  final String? description;
  /// Name of the certificate
  final String? displayName;
  /// Auto generated primary key
  final String? name;
  /// Input only. Raw client certificate which would be registered with trawler
  final GoogleCloudIntegrationsV1alphaClientCertificateResponse? rawCertificate;
  /// Immutable. Requestor ID to be used to register certificate with trawler
  final String? requestorId;
  /// The timestamp after which certificate will expire
  final String? validEndTime;
  /// The timestamp after which certificate will be valid
  final String? validStartTime;

  /// Creates a new [GetCertificateResult].
  /// [certificateStatus] Status of the certificate
  /// [credentialId] Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY
  /// [description] Description of the certificate
  /// [displayName] Name of the certificate
  /// [name] Auto generated primary key
  /// [rawCertificate] Input only. Raw client certificate which would be registered with trawler
  /// [requestorId] Immutable. Requestor ID to be used to register certificate with trawler
  /// [validEndTime] The timestamp after which certificate will expire
  /// [validStartTime] The timestamp after which certificate will be valid
  const GetCertificateResult({
    this.certificateStatus,
    this.credentialId,
    this.description,
    this.displayName,
    this.name,
    this.rawCertificate,
    this.requestorId,
    this.validEndTime,
    this.validStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateStatus': ?certificateStatus,
      'credentialId': ?credentialId,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'rawCertificate': ?rawCertificate?.toMap(),
      'requestorId': ?requestorId,
      'validEndTime': ?validEndTime,
      'validStartTime': ?validStartTime,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificateStatus: (() { final guardedValue = map['certificateStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialId: (() { final guardedValue = map['credentialId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rawCertificate: (() { final guardedValue = map['rawCertificate']; if (guardedValue == null) return null; return GoogleCloudIntegrationsV1alphaClientCertificateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      requestorId: (() { final guardedValue = map['requestorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validEndTime: (() { final guardedValue = map['validEndTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validStartTime: (() { final guardedValue = map['validStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
