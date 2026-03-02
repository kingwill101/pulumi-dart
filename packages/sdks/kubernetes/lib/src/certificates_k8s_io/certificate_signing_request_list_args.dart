// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'certificate_signing_request_certificates_k8s_io_v1.dart';

/// {@template pulumi_certificates_k8s_io_v1_certificate_signing_request_list_args_doc}
/// The set of arguments for CertificateSigningRequestList.
/// {@endtemplate}
/// {@macro pulumi_certificates_k8s_io_v1_certificate_signing_request_list_args_doc}
class CertificateSigningRequestListArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// items is a collection of CertificateSigningRequest objects
  final pulumi.Input<List<CertificateSigningRequestCertificatesK8sIoV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [CertificateSigningRequestListArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] items is a collection of CertificateSigningRequest objects
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  CertificateSigningRequestListArgs({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory CertificateSigningRequestListArgs.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestListArgs(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      items: ((map['items'] as List).cast<CertificateSigningRequestCertificatesK8sIoV1>()).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ListMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

