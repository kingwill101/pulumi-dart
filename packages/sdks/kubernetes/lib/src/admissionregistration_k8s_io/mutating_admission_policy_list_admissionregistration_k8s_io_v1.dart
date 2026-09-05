import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'mutating_admission_policy.dart';
import 'mutating_admission_policy_list_args.dart';

/// MutatingAdmissionPolicyList is a list of MutatingAdmissionPolicy.
class MutatingAdmissionPolicyListAdmissionregistrationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// List of ValidatingAdmissionPolicy.
  late final pulumi.Output<List<MutatingAdmissionPolicy>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [MutatingAdmissionPolicyListAdmissionregistrationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MutatingAdmissionPolicyListAdmissionregistrationK8sIoV1]. {@macro pulumi_admissionregistration_k8s_io_v1_mutating_admission_policy_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MutatingAdmissionPolicyListAdmissionregistrationK8sIoV1(
    String name, {
    MutatingAdmissionPolicyListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1:MutatingAdmissionPolicyList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<MutatingAdmissionPolicy>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MutatingAdmissionPolicy>(guardedValue, (value) => MutatingAdmissionPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [MutatingAdmissionPolicyListAdmissionregistrationK8sIoV1] resource.
  MutatingAdmissionPolicyListAdmissionregistrationK8sIoV1.reference(String urn)
    : super(
        'kubernetes:admissionregistration.k8s.io/v1:MutatingAdmissionPolicyList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<MutatingAdmissionPolicy>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MutatingAdmissionPolicy>(guardedValue, (value) => MutatingAdmissionPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
