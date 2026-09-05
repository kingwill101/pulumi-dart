import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'pod_disruption_budget_patch_args.dart';
import 'pod_disruption_budget_spec_patch.dart';
import 'pod_disruption_budget_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
class PodDisruptionBudgetPatchPolicyV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// metadata is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// spec is the specification of the desired behavior of the PodDisruptionBudget.
  late final pulumi.Output<PodDisruptionBudgetSpecPatch?> spec;
  /// status is the most recently observed status of the PodDisruptionBudget.
  late final pulumi.Output<PodDisruptionBudgetStatusPatch?> status;

  /// Creates a new [PodDisruptionBudgetPatchPolicyV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodDisruptionBudgetPatchPolicyV1]. {@macro pulumi_policy_v1_pod_disruption_budget_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodDisruptionBudgetPatchPolicyV1(
    String name, {
    PodDisruptionBudgetPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:policy/v1:PodDisruptionBudgetPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodDisruptionBudgetSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodDisruptionBudgetSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodDisruptionBudgetStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodDisruptionBudgetStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PodDisruptionBudgetPatchPolicyV1] resource.
  PodDisruptionBudgetPatchPolicyV1.reference(String urn)
    : super(
        'kubernetes:policy/v1:PodDisruptionBudgetPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodDisruptionBudgetSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodDisruptionBudgetSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodDisruptionBudgetStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodDisruptionBudgetStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
