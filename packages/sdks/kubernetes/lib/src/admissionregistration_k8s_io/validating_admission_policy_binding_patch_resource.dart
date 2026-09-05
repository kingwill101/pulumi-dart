import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'validating_admission_policy_binding_patch_admissionregistration_k8s_io_v1alpha1_args.dart';
import 'validating_admission_policy_binding_spec_patch_admissionregistration_k8s_io_v1alpha1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ValidatingAdmissionPolicyBinding binds the ValidatingAdmissionPolicy with paramerized resources. ValidatingAdmissionPolicyBinding and parameter CRDs together define how cluster administrators configure policies for clusters.
class ValidatingAdmissionPolicyBindingPatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Specification of the desired behavior of the ValidatingAdmissionPolicyBinding.
  late final pulumi.Output<ValidatingAdmissionPolicyBindingSpecPatchAdmissionregistrationK8sIoV1alpha1?> spec;

  /// Creates a new [ValidatingAdmissionPolicyBindingPatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ValidatingAdmissionPolicyBindingPatchResource]. {@macro pulumi_admissionregistration_k8s_io_v1alpha1_validating_admission_policy_binding_patch_admissionregistration_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ValidatingAdmissionPolicyBindingPatchResource(
    String name, {
    ValidatingAdmissionPolicyBindingPatchAdmissionregistrationK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1alpha1:ValidatingAdmissionPolicyBindingPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ValidatingAdmissionPolicyBindingSpecPatchAdmissionregistrationK8sIoV1alpha1?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ValidatingAdmissionPolicyBindingSpecPatchAdmissionregistrationK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ValidatingAdmissionPolicyBindingPatchResource] resource.
  ValidatingAdmissionPolicyBindingPatchResource.reference(String urn)
    : super(
        'kubernetes:admissionregistration.k8s.io/v1alpha1:ValidatingAdmissionPolicyBindingPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ValidatingAdmissionPolicyBindingSpecPatchAdmissionregistrationK8sIoV1alpha1?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ValidatingAdmissionPolicyBindingSpecPatchAdmissionregistrationK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
