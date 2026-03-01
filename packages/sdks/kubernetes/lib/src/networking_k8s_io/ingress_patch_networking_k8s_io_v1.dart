import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'ingress_patch_args.dart';
import 'ingress_spec_patch.dart';
import 'ingress_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// Ingress is a collection of rules that allow inbound connections to reach the endpoints defined by a backend. An Ingress can be configured to give services externally-reachable urls, load balance traffic, terminate SSL, offer name based virtual hosting etc.
///
/// This resource waits until its status is ready before registering success
/// for create/update, and populating output properties from the current state of the resource.
/// The following conditions are used to determine whether the resource creation has
/// succeeded or failed:
///
/// 1.  Ingress object exists.
/// 2.  Endpoint objects exist with matching names for each Ingress path (except when Service
/// type is ExternalName).
/// 3.  Ingress entry exists for '.status.loadBalancer.ingress'.
///
/// If the Ingress has not reached a Ready state after 10 minutes, it will
/// time out and mark the resource update as Failed. You can override the default timeout value
/// by setting the 'customTimeouts' option on the resource.
class IngressPatchNetworkingK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// spec is the desired state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<IngressSpecPatch?> spec;
  /// status is the current state of the Ingress. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<IngressStatusPatch?> status;

  /// Creates a new [IngressPatchNetworkingK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IngressPatchNetworkingK8sIoV1]. {@macro pulumi_networking_k8s_io_v1_ingress_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IngressPatchNetworkingK8sIoV1(
    String name, {
    IngressPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:networking.k8s.io/v1:IngressPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String?>('apiVersion');
    this.kind = registerOutput<String?>('kind');
    this.metadata = registerOutput<ObjectMetaPatch?>('metadata');
    this.spec = registerOutput<IngressSpecPatch?>('spec');
    this.status = registerOutput<IngressStatusPatch?>('status');
  }
}
