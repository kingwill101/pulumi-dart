import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'validating_admission_policy_binding_admissionregistration_k8s_io_v1beta1.dart';
import 'validating_admission_policy_binding_list_admissionregistration_k8s_io_v1beta1_args.dart';

/// ValidatingAdmissionPolicyBindingList is a list of ValidatingAdmissionPolicyBinding.
class ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1beta1Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// List of PolicyBinding.
  late final pulumi.Output<List<ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1beta1Resource]. {@macro pulumi_admissionregistration_k8s_io_v1beta1_validating_admission_policy_binding_list_admissionregistration_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1beta1Resource(
    String name, {
    ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1beta1:ValidatingAdmissionPolicyBindingList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1>(guardedValue, (value) => ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1beta1Resource] resource.
  ValidatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1beta1Resource.reference(String urn)
    : super(
        'kubernetes:admissionregistration.k8s.io/v1beta1:ValidatingAdmissionPolicyBindingList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1>(guardedValue, (value) => ValidatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
