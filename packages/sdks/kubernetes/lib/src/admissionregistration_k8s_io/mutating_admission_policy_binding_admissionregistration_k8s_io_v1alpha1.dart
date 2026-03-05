import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'mutating_admission_policy_binding_args.dart';
import 'mutating_admission_policy_binding_spec.dart';

/// MutatingAdmissionPolicyBinding binds the MutatingAdmissionPolicy with parametrized resources. MutatingAdmissionPolicyBinding and the optional parameter resource together define how cluster administrators configure policies for clusters.
///
/// For a given admission request, each binding will cause its policy to be evaluated N times, where N is 1 for policies/bindings that don't use params, otherwise N is the number of parameters selected by the binding. Each evaluation is constrained by a [runtime cost budget](https://kubernetes.io/docs/reference/using-api/cel/#runtime-cost-budget).
///
/// Adding/removing policies, bindings, or params can not affect whether a given (policy, binding, param) combination is within its own CEL budget.
class MutatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMeta> metadata;

  /// Specification of the desired behavior of the MutatingAdmissionPolicyBinding.
  late final pulumi.Output<MutatingAdmissionPolicyBindingSpec> spec;

  /// Creates a new [MutatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MutatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1]. {@macro pulumi_admissionregistration_k8s_io_v1alpha1_mutating_admission_policy_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MutatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1(
    String name, {
    MutatingAdmissionPolicyBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:admissionregistration.k8s.io/v1alpha1:MutatingAdmissionPolicyBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMeta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spec = registerOutput<MutatingAdmissionPolicyBindingSpec>(
      'spec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MutatingAdmissionPolicyBindingSpec.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
