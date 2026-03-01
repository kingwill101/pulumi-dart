import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'validating_admission_policy_binding_admissionregistration_k8s_io_v1alpha1_args.dart';
import 'validating_admission_policy_binding_spec_admissionregistration_k8s_io_v1alpha1.dart';

/// ValidatingAdmissionPolicyBinding binds the ValidatingAdmissionPolicy with paramerized resources. ValidatingAdmissionPolicyBinding and parameter CRDs together define how cluster administrators configure policies for clusters.
class ValidatingAdmissionPolicyBindingResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// Specification of the desired behavior of the ValidatingAdmissionPolicyBinding.
  late final pulumi.Output<ValidatingAdmissionPolicyBindingSpecAdmissionregistrationK8sIoV1alpha1> spec;

  /// Creates a new [ValidatingAdmissionPolicyBindingResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ValidatingAdmissionPolicyBindingResource]. {@macro pulumi_admissionregistration_k8s_io_v1alpha1_validating_admission_policy_binding_admissionregistration_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ValidatingAdmissionPolicyBindingResource(
    String name, {
    ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1alpha1:ValidatingAdmissionPolicyBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<ValidatingAdmissionPolicyBindingSpecAdmissionregistrationK8sIoV1alpha1>('spec');
  }
}
