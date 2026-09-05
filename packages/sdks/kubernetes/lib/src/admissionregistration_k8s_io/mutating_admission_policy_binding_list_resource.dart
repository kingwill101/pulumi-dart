import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'mutating_admission_policy_binding_admissionregistration_k8s_io_v1alpha1.dart';
import 'mutating_admission_policy_binding_list_admissionregistration_k8s_io_v1alpha1_args.dart';

/// MutatingAdmissionPolicyBindingList is a list of MutatingAdmissionPolicyBinding.
class MutatingAdmissionPolicyBindingListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// List of PolicyBinding.
  late final pulumi.Output<List<MutatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [MutatingAdmissionPolicyBindingListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MutatingAdmissionPolicyBindingListResource]. {@macro pulumi_admissionregistration_k8s_io_v1alpha1_mutating_admission_policy_binding_list_admissionregistration_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MutatingAdmissionPolicyBindingListResource(
    String name, {
    MutatingAdmissionPolicyBindingListAdmissionregistrationK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1alpha1:MutatingAdmissionPolicyBindingList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<MutatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MutatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1>(guardedValue, (value) => MutatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [MutatingAdmissionPolicyBindingListResource] resource.
  MutatingAdmissionPolicyBindingListResource.reference(String urn)
    : super(
        'kubernetes:admissionregistration.k8s.io/v1alpha1:MutatingAdmissionPolicyBindingList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<MutatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MutatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1>(guardedValue, (value) => MutatingAdmissionPolicyBindingAdmissionregistrationK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
