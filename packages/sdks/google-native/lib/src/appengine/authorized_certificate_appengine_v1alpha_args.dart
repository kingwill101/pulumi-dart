// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_raw_data_appengine_v1alpha.dart';

/// {@template pulumi_appengine_v1alpha_authorized_certificate_appengine_v1alpha_args_doc}
/// The set of arguments for AuthorizedCertificate.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1alpha_authorized_certificate_appengine_v1alpha_args_doc}
class AuthorizedCertificateAppengineV1alphaArgs {
  final pulumi.Input<String> appId;
  /// The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  final pulumi.Input<CertificateRawDataAppengineV1alpha>? certificateRawData;
  /// The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  final pulumi.Input<String>? displayName;

  /// Creates a new [AuthorizedCertificateAppengineV1alphaArgs].
  /// [appId] Required.
  /// [certificateRawData] The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.
  /// [displayName] The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.
  AuthorizedCertificateAppengineV1alphaArgs({
    required this.appId,
    this.certificateRawData,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'certificateRawData': ?pulumi.Input.mapOptionalInputValue<CertificateRawDataAppengineV1alpha, Map<String, dynamic>>(certificateRawData, (value) => value.toMap()),
      'displayName': ?displayName,
    };
  }

  factory AuthorizedCertificateAppengineV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedCertificateAppengineV1alphaArgs(
      appId: (map['appId'] as String).input(),
      certificateRawData: map['certificateRawData'] == null ? null : (CertificateRawDataAppengineV1alpha.fromMap((map['certificateRawData']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
    );
  }
}

