import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'mutating_admission_policy_list_admissionregistration_k8s_io_v1beta1_args.dart';
import 'mutating_admission_policy_resource.dart';

/// MutatingAdmissionPolicyList is a list of MutatingAdmissionPolicy.
class MutatingAdmissionPolicyListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// List of ValidatingAdmissionPolicy.
  late final pulumi.Output<List<MutatingAdmissionPolicyResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [MutatingAdmissionPolicyListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MutatingAdmissionPolicyListResource]. {@macro pulumi_admissionregistration_k8s_io_v1beta1_mutating_admission_policy_list_admissionregistration_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MutatingAdmissionPolicyListResource(
    String name, {
    MutatingAdmissionPolicyListAdmissionregistrationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:admissionregistration.k8s.io/v1beta1:MutatingAdmissionPolicyList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<MutatingAdmissionPolicyResource>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
