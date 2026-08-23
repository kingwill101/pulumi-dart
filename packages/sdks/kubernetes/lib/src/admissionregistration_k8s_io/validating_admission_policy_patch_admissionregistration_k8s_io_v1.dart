import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'validating_admission_policy_patch_args.dart';
import 'validating_admission_policy_spec_patch.dart';
import 'validating_admission_policy_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ValidatingAdmissionPolicy describes the definition of an admission validation policy that accepts or rejects an object without changing it.
class ValidatingAdmissionPolicyPatchAdmissionregistrationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// spec defines the desired behavior of the ValidatingAdmissionPolicy.
  late final pulumi.Output<ValidatingAdmissionPolicySpecPatch?> spec;
  /// status represents the current status of the ValidatingAdmissionPolicy, including warnings that are useful to determine if the policy behaves in the expected way. Populated by the system. Read-only.
  late final pulumi.Output<ValidatingAdmissionPolicyStatusPatch?> status;

  /// Creates a new [ValidatingAdmissionPolicyPatchAdmissionregistrationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ValidatingAdmissionPolicyPatchAdmissionregistrationK8sIoV1]. {@macro pulumi_admissionregistration_k8s_io_v1_validating_admission_policy_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ValidatingAdmissionPolicyPatchAdmissionregistrationK8sIoV1(
    String name, {
    ValidatingAdmissionPolicyPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1:ValidatingAdmissionPolicyPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ValidatingAdmissionPolicySpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ValidatingAdmissionPolicySpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ValidatingAdmissionPolicyStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ValidatingAdmissionPolicyStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
