import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'cluster_trust_bundle.dart';
import 'cluster_trust_bundle_list_args.dart';

/// ClusterTrustBundleList is a collection of ClusterTrustBundle objects
class ClusterTrustBundleListCertificatesK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is a collection of ClusterTrustBundle objects
  late final pulumi.Output<List<ClusterTrustBundle>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata contains the list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ClusterTrustBundleListCertificatesK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterTrustBundleListCertificatesK8sIoV1]. {@macro pulumi_certificates_k8s_io_v1_cluster_trust_bundle_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterTrustBundleListCertificatesK8sIoV1(
    String name, {
    ClusterTrustBundleListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:certificates.k8s.io/v1:ClusterTrustBundleList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ClusterTrustBundle>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterTrustBundle>(guardedValue, (value) => ClusterTrustBundle.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ClusterTrustBundleListCertificatesK8sIoV1] resource.
  ClusterTrustBundleListCertificatesK8sIoV1.reference(String urn)
    : super(
        'kubernetes:certificates.k8s.io/v1:ClusterTrustBundleList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ClusterTrustBundle>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterTrustBundle>(guardedValue, (value) => ClusterTrustBundle.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
