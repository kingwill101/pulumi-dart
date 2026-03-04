// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'certificate_signing_request_spec_certificates_k8s_io_v1beta1.dart';
import 'certificate_signing_request_status_certificates_k8s_io_v1beta1.dart';

/// Describes a certificate signing request
class CertificateSigningRequestCertificatesK8sIoV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ObjectMeta>? metadata;

  /// The certificate request itself and any additional information.
  final pulumi.Input<CertificateSigningRequestSpecCertificatesK8sIoV1beta1>?
  spec;

  /// Derived information about the request.
  final pulumi.Input<CertificateSigningRequestStatusCertificatesK8sIoV1beta1>?
  status;

  /// Creates a new [CertificateSigningRequestCertificatesK8sIoV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] The certificate request itself and any additional information.
  /// [status] Derived information about the request.
  CertificateSigningRequestCertificatesK8sIoV1beta1({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(
            metadata,
            (value) => value.toMap(),
          ),
      'spec':
          ?pulumi.Input.mapOptionalInputValue<
            CertificateSigningRequestSpecCertificatesK8sIoV1beta1,
            Map<String, dynamic>
          >(spec, (value) => value.toMap()),
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            CertificateSigningRequestStatusCertificatesK8sIoV1beta1,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
    };
  }

  factory CertificateSigningRequestCertificatesK8sIoV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateSigningRequestCertificatesK8sIoV1beta1(
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
          ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CertificateSigningRequestSpecCertificatesK8sIoV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CertificateSigningRequestStatusCertificatesK8sIoV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
