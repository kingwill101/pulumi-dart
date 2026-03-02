// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'certificate_signing_request_spec_certificates_k8s_io_v1beta1.dart';

/// {@template pulumi_certificates_k8s_io_v1beta1_certificate_signing_request_certificates_k8s_io_v1beta1_args_doc}
/// The set of arguments for CertificateSigningRequest.
/// {@endtemplate}
/// {@macro pulumi_certificates_k8s_io_v1beta1_certificate_signing_request_certificates_k8s_io_v1beta1_args_doc}
class CertificateSigningRequestCertificatesK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ObjectMeta>? metadata;
  /// The certificate request itself and any additional information.
  final pulumi.Input<CertificateSigningRequestSpecCertificatesK8sIoV1beta1>? spec;

  /// Creates a new [CertificateSigningRequestCertificatesK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] The certificate request itself and any additional information.
  CertificateSigningRequestCertificatesK8sIoV1beta1Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<CertificateSigningRequestSpecCertificatesK8sIoV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory CertificateSigningRequestCertificatesK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestCertificatesK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (CertificateSigningRequestSpecCertificatesK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

