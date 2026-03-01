// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_status.dart';
import 'google_cloud_integrations_v1alpha_client_certificate.dart';

/// {@template pulumi_integrations_v1alpha_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_certificate_args_doc}
class CertificateArgs {
  /// Status of the certificate
  final pulumi.Input<CertificateCertificateStatus>? certificateStatus;
  /// Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY
  final pulumi.Input<String>? credentialId;
  /// Description of the certificate
  final pulumi.Input<String>? description;
  /// Name of the certificate
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  /// Input only. Raw client certificate which would be registered with trawler
  final pulumi.Input<GoogleCloudIntegrationsV1alphaClientCertificate>? rawCertificate;
  /// Immutable. Requestor ID to be used to register certificate with trawler
  final pulumi.Input<String>? requestorId;

  /// Creates a new [CertificateArgs].
  /// [certificateStatus] Status of the certificate
  /// [credentialId] Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY
  /// [description] Description of the certificate
  /// [displayName] Name of the certificate
  /// [location] Optional.
  /// [productId] Required.
  /// [project] Optional.
  /// [rawCertificate] Input only. Raw client certificate which would be registered with trawler
  /// [requestorId] Immutable. Requestor ID to be used to register certificate with trawler
  CertificateArgs({
    pulumi.Output<CertificateCertificateStatus>? certificateStatus,
    pulumi.Output<String>? credentialId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? project,
    pulumi.Output<GoogleCloudIntegrationsV1alphaClientCertificate>? rawCertificate,
    pulumi.Output<String>? requestorId,
  }) :
      certificateStatus = pulumi.Input.asOptionalInput<CertificateCertificateStatus>(certificateStatus),
      credentialId = pulumi.Input.asOptionalInput<String>(credentialId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      productId = pulumi.Input.asInput<String>(productId),
      project = pulumi.Input.asOptionalInput<String>(project),
      rawCertificate = pulumi.Input.asOptionalInput<GoogleCloudIntegrationsV1alphaClientCertificate>(rawCertificate),
      requestorId = pulumi.Input.asOptionalInput<String>(requestorId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateStatus': ?pulumi.Input.mapOptionalInputValue<CertificateCertificateStatus, String>(certificateStatus, (value) => value.value),
      'credentialId': ?credentialId,
      'description': ?description,
      'displayName': displayName,
      'location': ?location,
      'productId': productId,
      'project': ?project,
      'rawCertificate': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaClientCertificate, Map<String, dynamic>>(rawCertificate, (value) => value.toMap()),
      'requestorId': ?requestorId,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateStatus: map['certificateStatus'] == null ? null : pulumi.Output.create<CertificateCertificateStatus>(CertificateCertificateStatus.fromValue(map['certificateStatus'] as String)),
      credentialId: map['credentialId'] == null ? null : pulumi.Output.create<String>(map['credentialId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rawCertificate: map['rawCertificate'] == null ? null : pulumi.Output.create<GoogleCloudIntegrationsV1alphaClientCertificate>(GoogleCloudIntegrationsV1alphaClientCertificate.fromMap((map['rawCertificate'] as Map).cast<String, dynamic>())),
      requestorId: map['requestorId'] == null ? null : pulumi.Output.create<String>(map['requestorId'] as String),
    );
  }
}

