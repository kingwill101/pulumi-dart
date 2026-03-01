// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_signing_request_condition_certificates_k8s_io_v1beta1.dart';

class CertificateSigningRequestStatusCertificatesK8sIoV1beta1 {
  /// If request was approved, the controller will place the issued certificate here.
  final String? certificate;
  /// Conditions applied to the request, such as approval or denial.
  final List<CertificateSigningRequestConditionCertificatesK8sIoV1beta1>? conditions;

  /// Creates a new [CertificateSigningRequestStatusCertificatesK8sIoV1beta1].
  /// [certificate] If request was approved, the controller will place the issued certificate here.
  /// [conditions] Conditions applied to the request, such as approval or denial.
  CertificateSigningRequestStatusCertificatesK8sIoV1beta1({
    this.certificate,
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<CertificateSigningRequestConditionCertificatesK8sIoV1beta1, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
    };
  }

  factory CertificateSigningRequestStatusCertificatesK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestStatusCertificatesK8sIoV1beta1(
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<CertificateSigningRequestConditionCertificatesK8sIoV1beta1>(map['conditions'], (value) => CertificateSigningRequestConditionCertificatesK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

