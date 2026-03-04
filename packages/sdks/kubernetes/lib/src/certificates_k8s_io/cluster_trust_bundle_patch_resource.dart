import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'cluster_trust_bundle_patch_certificates_k8s_io_v1beta1_args.dart';
import 'cluster_trust_bundle_spec_patch_certificates_k8s_io_v1beta1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ClusterTrustBundle is a cluster-scoped container for X.509 trust anchors (root certificates).
///
/// ClusterTrustBundle objects are considered to be readable by any authenticated user in the cluster, because they can be mounted by pods using the `clusterTrustBundle` projection.  All service accounts have read access to ClusterTrustBundles by default.  Users who only have namespace-level access to a cluster can read ClusterTrustBundles by impersonating a serviceaccount that they have access to.
///
/// It can be optionally associated with a particular assigner, in which case it contains one valid set of trust anchors for that signer. Signers may have multiple associated ClusterTrustBundles; each is an independent set of trust anchors for that signer. Admission control is used to enforce that only users with permissions on the signer can create or modify the corresponding bundle.
class ClusterTrustBundlePatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// metadata contains the object metadata.
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// spec contains the signer (if any) and trust anchors.
  late final pulumi.Output<ClusterTrustBundleSpecPatchCertificatesK8sIoV1beta1?>
  spec;

  /// Creates a new [ClusterTrustBundlePatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterTrustBundlePatchResource]. {@macro pulumi_certificates_k8s_io_v1beta1_cluster_trust_bundle_patch_certificates_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterTrustBundlePatchResource(
    String name, {
    ClusterTrustBundlePatchCertificatesK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:certificates.k8s.io/v1beta1:ClusterTrustBundlePatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata');
    spec = registerOutput<ClusterTrustBundleSpecPatchCertificatesK8sIoV1beta1?>(
      'spec',
    );
  }
}
