// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';
import 'pod_certificate_request_spec_patch.dart';
import 'pod_certificate_request_status_patch.dart';

/// PodCertificateRequest encodes a pod requesting a certificate from a given signer.
///
/// Kubelets use this API to implement podCertificate projected volumes
class PodCertificateRequestPatch {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// metadata contains the object metadata.
  final ObjectMetaPatch? metadata;
  /// spec contains the details about the certificate being requested.
  final PodCertificateRequestSpecPatch? spec;
  /// status contains the issued certificate, and a standard set of conditions.
  final PodCertificateRequestStatusPatch? status;

  /// Creates a new [PodCertificateRequestPatch].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata contains the object metadata.
  /// [spec] spec contains the details about the certificate being requested.
  /// [status] status contains the issued certificate, and a standard set of conditions.
  PodCertificateRequestPatch({
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
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory PodCertificateRequestPatch.fromMap(Map<String, dynamic> map) {
    return PodCertificateRequestPatch(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : PodCertificateRequestSpecPatch.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : PodCertificateRequestStatusPatch.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

