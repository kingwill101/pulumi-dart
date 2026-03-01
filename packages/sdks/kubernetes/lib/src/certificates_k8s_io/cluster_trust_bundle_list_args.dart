// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'cluster_trust_bundle_certificates_k8s_io_v1alpha1.dart';

/// {@template pulumi_certificates_k8s_io_v1alpha1_cluster_trust_bundle_list_args_doc}
/// The set of arguments for ClusterTrustBundleList.
/// {@endtemplate}
/// {@macro pulumi_certificates_k8s_io_v1alpha1_cluster_trust_bundle_list_args_doc}
class ClusterTrustBundleListArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// items is a collection of ClusterTrustBundle objects
  final pulumi.Input<List<ClusterTrustBundleCertificatesK8sIoV1alpha1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// metadata contains the list metadata.
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [ClusterTrustBundleListArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] items is a collection of ClusterTrustBundle objects
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata contains the list metadata.
  ClusterTrustBundleListArgs({
    pulumi.Output<String>? apiVersion,
    required pulumi.Output<List<ClusterTrustBundleCertificatesK8sIoV1alpha1>> items,
    pulumi.Output<String>? kind,
    pulumi.Output<ListMeta>? metadata,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      items = pulumi.Input.asInput<List<ClusterTrustBundleCertificatesK8sIoV1alpha1>>(items),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ListMeta>(metadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory ClusterTrustBundleListArgs.fromMap(Map<String, dynamic> map) {
    return ClusterTrustBundleListArgs(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      items: pulumi.Output.create<List<ClusterTrustBundleCertificatesK8sIoV1alpha1>>((map['items'] as List).cast<ClusterTrustBundleCertificatesK8sIoV1alpha1>()),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ListMeta>(ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
    );
  }
}

