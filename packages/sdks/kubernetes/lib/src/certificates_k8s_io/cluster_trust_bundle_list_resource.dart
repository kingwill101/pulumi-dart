import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'cluster_trust_bundle_certificates_k8s_io_v1alpha1.dart';
import 'cluster_trust_bundle_list_certificates_k8s_io_v1alpha1_args.dart';

/// ClusterTrustBundleList is a collection of ClusterTrustBundle objects
class ClusterTrustBundleListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is a collection of ClusterTrustBundle objects
  late final pulumi.Output<List<ClusterTrustBundleCertificatesK8sIoV1alpha1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata contains the list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ClusterTrustBundleListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterTrustBundleListResource]. {@macro pulumi_certificates_k8s_io_v1alpha1_cluster_trust_bundle_list_certificates_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterTrustBundleListResource(
    String name, {
    ClusterTrustBundleListCertificatesK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:certificates.k8s.io/v1alpha1:ClusterTrustBundleList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ClusterTrustBundleCertificatesK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterTrustBundleCertificatesK8sIoV1alpha1>(guardedValue, (value) => ClusterTrustBundleCertificatesK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ClusterTrustBundleListResource] resource.
  ClusterTrustBundleListResource.reference(String urn)
    : super(
        'kubernetes:certificates.k8s.io/v1alpha1:ClusterTrustBundleList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ClusterTrustBundleCertificatesK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterTrustBundleCertificatesK8sIoV1alpha1>(guardedValue, (value) => ClusterTrustBundleCertificatesK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
