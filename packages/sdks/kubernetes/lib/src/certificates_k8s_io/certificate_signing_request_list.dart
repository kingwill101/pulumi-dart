// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'certificate_signing_request.dart';

/// CertificateSigningRequestList is a collection of CertificateSigningRequest objects
class CertificateSigningRequestList {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// items is a collection of CertificateSigningRequest objects
  final List<CertificateSigningRequest> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  final ListMeta? metadata;

  /// Creates a new [CertificateSigningRequestList].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] items is a collection of CertificateSigningRequest objects
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  CertificateSigningRequestList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': pulumi.Input.encodeList<CertificateSigningRequest, Map<String, dynamic>>(items, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory CertificateSigningRequestList.fromMap(Map<String, dynamic> map) {
    return CertificateSigningRequestList(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      items: pulumi.Input.decodeList<CertificateSigningRequest>(map['items'], (value) => CertificateSigningRequest.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

