import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'device_taint_rule_list_resource_k8s_io_v1beta2_args.dart';
import 'device_taint_rule_resource_k8s_io_v1beta2.dart';

/// DeviceTaintRuleList is a collection of DeviceTaintRules.
class DeviceTaintRuleListResourceK8sIoV1beta2Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of DeviceTaintRules.
  late final pulumi.Output<List<DeviceTaintRuleResourceK8sIoV1beta2>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [DeviceTaintRuleListResourceK8sIoV1beta2Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceTaintRuleListResourceK8sIoV1beta2Resource]. {@macro pulumi_resource_k8s_io_v1beta2_device_taint_rule_list_resource_k8s_io_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceTaintRuleListResourceK8sIoV1beta2Resource(
    String name, {
    DeviceTaintRuleListResourceK8sIoV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1beta2:DeviceTaintRuleList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<DeviceTaintRuleResourceK8sIoV1beta2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeviceTaintRuleResourceK8sIoV1beta2>(guardedValue, (value) => DeviceTaintRuleResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DeviceTaintRuleListResourceK8sIoV1beta2Resource] resource.
  DeviceTaintRuleListResourceK8sIoV1beta2Resource.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1beta2:DeviceTaintRuleList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<DeviceTaintRuleResourceK8sIoV1beta2>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeviceTaintRuleResourceK8sIoV1beta2>(guardedValue, (value) => DeviceTaintRuleResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
