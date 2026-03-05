import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'mutating_admission_policy_args.dart';
import 'mutating_admission_policy_spec.dart';

/// MutatingAdmissionPolicy describes the definition of an admission mutation policy that mutates the object coming into admission chain.
class MutatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// Specification of the desired behavior of the MutatingAdmissionPolicy.
  late final pulumi.Output<MutatingAdmissionPolicySpec> spec;

  /// Creates a new [MutatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MutatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1]. {@macro pulumi_admissionregistration_k8s_io_v1alpha1_mutating_admission_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MutatingAdmissionPolicyAdmissionregistrationK8sIoV1alpha1(
    String name, {
    MutatingAdmissionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1alpha1:MutatingAdmissionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<MutatingAdmissionPolicySpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MutatingAdmissionPolicySpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
