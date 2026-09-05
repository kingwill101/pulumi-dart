// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'certificate_signing_request.dart';

/// {@template pulumi_certificates_k8s_io_v1_certificate_signing_request_list_args_doc}
/// The set of arguments for CertificateSigningRequestList.
/// {@endtemplate}
/// {@macro pulumi_certificates_k8s_io_v1_certificate_signing_request_list_args_doc}
class CertificateSigningRequestListArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// items is a collection of CertificateSigningRequest objects
  final pulumi.Input<List<CertificateSigningRequest>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  final pulumi.Input<ListMeta?>? metadata;

  /// Creates a new [CertificateSigningRequestListArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] items is a collection of CertificateSigningRequest objects
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  const CertificateSigningRequestListArgs({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': pulumi.Input.mapInputValue<List<CertificateSigningRequest>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<CertificateSigningRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory CertificateSigningRequestListArgs.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestListArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateSigningRequest>(map['items']!, (value) => CertificateSigningRequest.fromMap((value as Map).cast<String, dynamic>()))),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
