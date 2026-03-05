import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'pod_disruption_budget_patch_policy_v1beta1_args.dart';
import 'pod_disruption_budget_spec_patch_policy_v1beta1.dart';
import 'pod_disruption_budget_status_patch_policy_v1beta1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
class PodDisruptionBudgetPatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Specification of the desired behavior of the PodDisruptionBudget.
  late final pulumi.Output<PodDisruptionBudgetSpecPatchPolicyV1beta1?> spec;
  /// Most recently observed status of the PodDisruptionBudget.
  late final pulumi.Output<PodDisruptionBudgetStatusPatchPolicyV1beta1?> status;

  /// Creates a new [PodDisruptionBudgetPatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodDisruptionBudgetPatchResource]. {@macro pulumi_policy_v1beta1_pod_disruption_budget_patch_policy_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodDisruptionBudgetPatchResource(
    String name, {
    PodDisruptionBudgetPatchPolicyV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:policy/v1beta1:PodDisruptionBudgetPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodDisruptionBudgetSpecPatchPolicyV1beta1?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodDisruptionBudgetSpecPatchPolicyV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodDisruptionBudgetStatusPatchPolicyV1beta1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodDisruptionBudgetStatusPatchPolicyV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
