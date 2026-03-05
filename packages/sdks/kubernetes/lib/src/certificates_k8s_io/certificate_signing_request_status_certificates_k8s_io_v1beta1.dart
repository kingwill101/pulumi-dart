// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_signing_request_condition_certificates_k8s_io_v1beta1.dart';

class CertificateSigningRequestStatusCertificatesK8sIoV1beta1 {
  /// If request was approved, the controller will place the issued certificate here.
  final pulumi.Input<String>? certificate;
  /// Conditions applied to the request, such as approval or denial.
  final pulumi.Input<List<CertificateSigningRequestConditionCertificatesK8sIoV1beta1>>? conditions;

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
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<CertificateSigningRequestConditionCertificatesK8sIoV1beta1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<CertificateSigningRequestConditionCertificatesK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CertificateSigningRequestStatusCertificatesK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestStatusCertificatesK8sIoV1beta1(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateSigningRequestConditionCertificatesK8sIoV1beta1>(guardedValue, (value) => CertificateSigningRequestConditionCertificatesK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

