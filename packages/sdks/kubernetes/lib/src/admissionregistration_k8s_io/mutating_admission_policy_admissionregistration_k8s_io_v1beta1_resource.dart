import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'mutating_admission_policy_admissionregistration_k8s_io_v1beta1_args.dart';
import 'mutating_admission_policy_spec_admissionregistration_k8s_io_v1beta1.dart';

/// MutatingAdmissionPolicy describes the definition of an admission mutation policy that mutates the object coming into admission chain.
class MutatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec defines the desired behavior of the MutatingAdmissionPolicy.
  late final pulumi.Output<MutatingAdmissionPolicySpecAdmissionregistrationK8sIoV1beta1> spec;

  /// Creates a new [MutatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MutatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Resource]. {@macro pulumi_admissionregistration_k8s_io_v1beta1_mutating_admission_policy_admissionregistration_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MutatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Resource(
    String name, {
    MutatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1beta1:MutatingAdmissionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<MutatingAdmissionPolicySpecAdmissionregistrationK8sIoV1beta1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MutatingAdmissionPolicySpecAdmissionregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [MutatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Resource] resource.
  MutatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Resource.reference(String urn)
    : super(
        'kubernetes:admissionregistration.k8s.io/v1beta1:MutatingAdmissionPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<MutatingAdmissionPolicySpecAdmissionregistrationK8sIoV1beta1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MutatingAdmissionPolicySpecAdmissionregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
