import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'cluster_trust_bundle_certificates_k8s_io_v1alpha1_args.dart';
import 'cluster_trust_bundle_spec_certificates_k8s_io_v1alpha1.dart';

/// ClusterTrustBundle is a cluster-scoped container for X.509 trust anchors (root certificates).
///
/// ClusterTrustBundle objects are considered to be readable by any authenticated user in the cluster, because they can be mounted by pods using the `clusterTrustBundle` projection.  All service accounts have read access to ClusterTrustBundles by default.  Users who only have namespace-level access to a cluster can read ClusterTrustBundles by impersonating a serviceaccount that they have access to.
///
/// It can be optionally associated with a particular assigner, in which case it contains one valid set of trust anchors for that signer. Signers may have multiple associated ClusterTrustBundles; each is an independent set of trust anchors for that signer. Admission control is used to enforce that only users with permissions on the signer can create or modify the corresponding bundle.
class ClusterTrustBundleResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata contains the object metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec contains the signer (if any) and trust anchors.
  late final pulumi.Output<ClusterTrustBundleSpecCertificatesK8sIoV1alpha1> spec;

  /// Creates a new [ClusterTrustBundleResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterTrustBundleResource]. {@macro pulumi_certificates_k8s_io_v1alpha1_cluster_trust_bundle_certificates_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterTrustBundleResource(
    String name, {
    ClusterTrustBundleCertificatesK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:certificates.k8s.io/v1alpha1:ClusterTrustBundle',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ClusterTrustBundleSpecCertificatesK8sIoV1alpha1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterTrustBundleSpecCertificatesK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ClusterTrustBundleResource] resource.
  ClusterTrustBundleResource.reference(String urn)
    : super(
        'kubernetes:certificates.k8s.io/v1alpha1:ClusterTrustBundle',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ClusterTrustBundleSpecCertificatesK8sIoV1alpha1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterTrustBundleSpecCertificatesK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
