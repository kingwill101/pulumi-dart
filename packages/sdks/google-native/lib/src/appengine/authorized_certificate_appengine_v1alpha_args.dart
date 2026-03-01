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
    required pulumi.Output<String> appId,
    pulumi.Output<CertificateRawDataAppengineV1alpha>? certificateRawData,
    pulumi.Output<String>? displayName,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      certificateRawData = pulumi.Input.asOptionalInput<CertificateRawDataAppengineV1alpha>(certificateRawData),
      displayName = pulumi.Input.asOptionalInput<String>(displayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'certificateRawData': ?pulumi.Input.mapOptionalInputValue<CertificateRawDataAppengineV1alpha, Map<String, dynamic>>(certificateRawData, (value) => value.toMap()),
      'displayName': ?displayName,
    };
  }

  factory AuthorizedCertificateAppengineV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedCertificateAppengineV1alphaArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      certificateRawData: map['certificateRawData'] == null ? null : pulumi.Output.create<CertificateRawDataAppengineV1alpha>(CertificateRawDataAppengineV1alpha.fromMap((map['certificateRawData'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
    );
  }
}

