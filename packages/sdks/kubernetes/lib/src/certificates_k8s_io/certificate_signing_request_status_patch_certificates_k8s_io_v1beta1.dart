// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_signing_request_condition_patch_certificates_k8s_io_v1beta1.dart';

class CertificateSigningRequestStatusPatchCertificatesK8sIoV1beta1 {
  /// If request was approved, the controller will place the issued certificate here.
  final String? certificate;
  /// Conditions applied to the request, such as approval or denial.
  final List<CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1>? conditions;

  /// Creates a new [CertificateSigningRequestStatusPatchCertificatesK8sIoV1beta1].
  /// [certificate] If request was approved, the controller will place the issued certificate here.
  /// [conditions] Conditions applied to the request, such as approval or denial.
  CertificateSigningRequestStatusPatchCertificatesK8sIoV1beta1({
    this.certificate,
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
    };
  }

  factory CertificateSigningRequestStatusPatchCertificatesK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestStatusPatchCertificatesK8sIoV1beta1(
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1>(map['conditions'], (value) => CertificateSigningRequestConditionPatchCertificatesK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

