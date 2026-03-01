import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'cluster_trust_bundle_certificates_k8s_io_v1alpha1.dart';
import 'cluster_trust_bundle_list_args.dart';

/// ClusterTrustBundleList is a collection of ClusterTrustBundle objects
class ClusterTrustBundleListCertificatesK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is a collection of ClusterTrustBundle objects
  late final pulumi.Output<List<ClusterTrustBundleCertificatesK8sIoV1alpha1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata contains the list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ClusterTrustBundleListCertificatesK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterTrustBundleListCertificatesK8sIoV1alpha1]. {@macro pulumi_certificates_k8s_io_v1alpha1_cluster_trust_bundle_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterTrustBundleListCertificatesK8sIoV1alpha1(
    String name, {
    ClusterTrustBundleListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:certificates.k8s.io/v1alpha1:ClusterTrustBundleList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<ClusterTrustBundleCertificatesK8sIoV1alpha1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
