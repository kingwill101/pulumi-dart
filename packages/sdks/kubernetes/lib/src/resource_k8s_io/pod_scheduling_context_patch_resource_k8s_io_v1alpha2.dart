import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'pod_scheduling_context_patch_args.dart';
import 'pod_scheduling_context_spec_patch.dart';
import 'pod_scheduling_context_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// PodSchedulingContext objects hold information that is needed to schedule a Pod with ResourceClaims that use "WaitForFirstConsumer" allocation mode.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class PodSchedulingContextPatchResourceK8sIoV1alpha2 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Spec describes where resources for the Pod are needed.
  late final pulumi.Output<PodSchedulingContextSpecPatch?> spec;
  /// Status describes where resources for the Pod can be allocated.
  late final pulumi.Output<PodSchedulingContextStatusPatch?> status;

  /// Creates a new [PodSchedulingContextPatchResourceK8sIoV1alpha2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodSchedulingContextPatchResourceK8sIoV1alpha2]. {@macro pulumi_resource_k8s_io_v1alpha2_pod_scheduling_context_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodSchedulingContextPatchResourceK8sIoV1alpha2(
    String name, {
    PodSchedulingContextPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha2:PodSchedulingContextPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodSchedulingContextSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodSchedulingContextSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodSchedulingContextStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodSchedulingContextStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PodSchedulingContextPatchResourceK8sIoV1alpha2] resource.
  PodSchedulingContextPatchResourceK8sIoV1alpha2.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1alpha2:PodSchedulingContextPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodSchedulingContextSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodSchedulingContextSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodSchedulingContextStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodSchedulingContextStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
