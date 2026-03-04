// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'certificate_signing_request_spec_patch_certificates_k8s_io_v1beta1.dart';

/// {@template pulumi_certificates_k8s_io_v1beta1_certificate_signing_request_patch_certificates_k8s_io_v1beta1_args_doc}
/// The set of arguments for CertificateSigningRequestPatch.
/// {@endtemplate}
/// {@macro pulumi_certificates_k8s_io_v1beta1_certificate_signing_request_patch_certificates_k8s_io_v1beta1_args_doc}
class CertificateSigningRequestPatchCertificatesK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ObjectMetaPatch>? metadata;

  /// The certificate request itself and any additional information.
  final pulumi.Input<
    CertificateSigningRequestSpecPatchCertificatesK8sIoV1beta1
  >?
  spec;

  /// Creates a new [CertificateSigningRequestPatchCertificatesK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] The certificate request itself and any additional information.
  CertificateSigningRequestPatchCertificatesK8sIoV1beta1Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            ObjectMetaPatch,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
      'spec':
          ?pulumi.Input.mapOptionalInputValue<
            CertificateSigningRequestSpecPatchCertificatesK8sIoV1beta1,
            Map<String, dynamic>
          >(spec, (value) => value.toMap()),
    };
  }

  factory CertificateSigningRequestPatchCertificatesK8sIoV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateSigningRequestPatchCertificatesK8sIoV1beta1Args(
      apiVersion: (() {
        final guardedValue = map['apiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectMetaPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CertificateSigningRequestSpecPatchCertificatesK8sIoV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
