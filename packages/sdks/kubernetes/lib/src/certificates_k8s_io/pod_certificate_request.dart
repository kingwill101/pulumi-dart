// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_certificate_request_spec.dart';
import 'pod_certificate_request_status.dart';

/// PodCertificateRequest encodes a pod requesting a certificate from a given signer.
///
/// Kubelets use this API to implement podCertificate projected volumes
class PodCertificateRequest {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// metadata contains the object metadata.
  final pulumi.Input<ObjectMeta>? metadata;
  /// spec contains the details about the certificate being requested.
  final pulumi.Input<PodCertificateRequestSpec> spec;
  /// status contains the issued certificate, and a standard set of conditions.
  final pulumi.Input<PodCertificateRequestStatus>? status;

  /// Creates a new [PodCertificateRequest].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata contains the object metadata.
  /// [spec] spec contains the details about the certificate being requested.
  /// [status] status contains the issued certificate, and a standard set of conditions.
  PodCertificateRequest({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<PodCertificateRequestSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<PodCertificateRequestStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory PodCertificateRequest.fromMap(Map<String, dynamic> map) {
    return PodCertificateRequest(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      spec: (PodCertificateRequestSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (PodCertificateRequestStatus.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

