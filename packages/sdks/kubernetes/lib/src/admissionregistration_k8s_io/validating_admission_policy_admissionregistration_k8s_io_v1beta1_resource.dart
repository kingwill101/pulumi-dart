import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'validating_admission_policy_admissionregistration_k8s_io_v1beta1_args.dart';
import 'validating_admission_policy_spec_admissionregistration_k8s_io_v1beta1.dart';
import 'validating_admission_policy_status_admissionregistration_k8s_io_v1beta1.dart';

/// ValidatingAdmissionPolicy describes the definition of an admission validation policy that accepts or rejects an object without changing it.
class ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Resource
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMeta> metadata;

  /// Specification of the desired behavior of the ValidatingAdmissionPolicy.
  late final pulumi.Output<
    ValidatingAdmissionPolicySpecAdmissionregistrationK8sIoV1beta1
  >
  spec;

  /// The status of the ValidatingAdmissionPolicy, including warnings that are useful to determine if the policy behaves in the expected way. Populated by the system. Read-only.
  late final pulumi.Output<
    ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1beta1?
  >
  status;

  /// Creates a new [ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Resource]. {@macro pulumi_admissionregistration_k8s_io_v1beta1_validating_admission_policy_admissionregistration_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Resource(
    String name, {
    ValidatingAdmissionPolicyAdmissionregistrationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:admissionregistration.k8s.io/v1beta1:ValidatingAdmissionPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec =
        registerOutput<
          ValidatingAdmissionPolicySpecAdmissionregistrationK8sIoV1beta1
        >('spec');
    status =
        registerOutput<
          ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1beta1?
        >('status');
  }
}
