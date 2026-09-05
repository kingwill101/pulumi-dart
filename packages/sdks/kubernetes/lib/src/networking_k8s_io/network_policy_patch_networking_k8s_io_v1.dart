import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'network_policy_patch_args.dart';
import 'network_policy_spec_patch.dart';
import 'network_policy_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// NetworkPolicy describes what network traffic is allowed for a set of Pods
class NetworkPolicyPatchNetworkingK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// spec represents the specification of the desired behavior for this NetworkPolicy.
  late final pulumi.Output<NetworkPolicySpecPatch?> spec;
  /// Status is the current state of the NetworkPolicy. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<NetworkPolicyStatusPatch?> status;

  /// Creates a new [NetworkPolicyPatchNetworkingK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkPolicyPatchNetworkingK8sIoV1]. {@macro pulumi_networking_k8s_io_v1_network_policy_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkPolicyPatchNetworkingK8sIoV1(
    String name, {
    NetworkPolicyPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:networking.k8s.io/v1:NetworkPolicyPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<NetworkPolicySpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkPolicySpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<NetworkPolicyStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkPolicyStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [NetworkPolicyPatchNetworkingK8sIoV1] resource.
  NetworkPolicyPatchNetworkingK8sIoV1.reference(String urn)
    : super(
        'kubernetes:networking.k8s.io/v1:NetworkPolicyPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<NetworkPolicySpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkPolicySpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<NetworkPolicyStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkPolicyStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
