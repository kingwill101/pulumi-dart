// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'cluster_trust_bundle_spec_certificates_k8s_io_v1alpha1.dart';

/// {@template pulumi_certificates_k8s_io_v1alpha1_cluster_trust_bundle_certificates_k8s_io_v1alpha1_args_doc}
/// The set of arguments for ClusterTrustBundle.
/// {@endtemplate}
/// {@macro pulumi_certificates_k8s_io_v1alpha1_cluster_trust_bundle_certificates_k8s_io_v1alpha1_args_doc}
class ClusterTrustBundleCertificatesK8sIoV1alpha1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// metadata contains the object metadata.
  final pulumi.Input<ObjectMeta?>? metadata;
  /// spec contains the signer (if any) and trust anchors.
  final pulumi.Input<ClusterTrustBundleSpecCertificatesK8sIoV1alpha1> spec;

  /// Creates a new [ClusterTrustBundleCertificatesK8sIoV1alpha1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata contains the object metadata.
  /// [spec] spec contains the signer (if any) and trust anchors.
  const ClusterTrustBundleCertificatesK8sIoV1alpha1Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<ClusterTrustBundleSpecCertificatesK8sIoV1alpha1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ClusterTrustBundleCertificatesK8sIoV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return ClusterTrustBundleCertificatesK8sIoV1alpha1Args(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: pulumi.Input.fromValue(ClusterTrustBundleSpecCertificatesK8sIoV1alpha1.fromMap((map['spec']! as Map).cast<String, dynamic>())),
    );
  }
}
