// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'cluster_trust_bundle_certificates_k8s_io_v1alpha1.dart';

/// {@template pulumi_certificates_k8s_io_v1alpha1_cluster_trust_bundle_list_certificates_k8s_io_v1alpha1_args_doc}
/// The set of arguments for ClusterTrustBundleList.
/// {@endtemplate}
/// {@macro pulumi_certificates_k8s_io_v1alpha1_cluster_trust_bundle_list_certificates_k8s_io_v1alpha1_args_doc}
class ClusterTrustBundleListCertificatesK8sIoV1alpha1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// items is a collection of ClusterTrustBundle objects
  final pulumi.Input<List<ClusterTrustBundleCertificatesK8sIoV1alpha1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// metadata contains the list metadata.
  final pulumi.Input<ListMeta?>? metadata;

  /// Creates a new [ClusterTrustBundleListCertificatesK8sIoV1alpha1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] items is a collection of ClusterTrustBundle objects
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata contains the list metadata.
  const ClusterTrustBundleListCertificatesK8sIoV1alpha1Args({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': pulumi.Input.mapInputValue<List<ClusterTrustBundleCertificatesK8sIoV1alpha1>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<ClusterTrustBundleCertificatesK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory ClusterTrustBundleListCertificatesK8sIoV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return ClusterTrustBundleListCertificatesK8sIoV1alpha1Args(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterTrustBundleCertificatesK8sIoV1alpha1>(map['items']!, (value) => ClusterTrustBundleCertificatesK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
