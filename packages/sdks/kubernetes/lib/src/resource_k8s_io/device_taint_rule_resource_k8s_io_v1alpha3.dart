import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'device_taint_rule_args.dart';
import 'device_taint_rule_spec.dart';
import 'device_taint_rule_status.dart';

/// DeviceTaintRule adds one taint to all devices which match the selector. This has the same effect as if the taint was specified directly in the ResourceSlice by the DRA driver.
class DeviceTaintRuleResourceK8sIoV1alpha3 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// Spec specifies the selector and one taint.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  late final pulumi.Output<DeviceTaintRuleSpec> spec;

  /// Status provides information about what was requested in the spec.
  late final pulumi.Output<DeviceTaintRuleStatus?> status;

  /// Creates a new [DeviceTaintRuleResourceK8sIoV1alpha3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceTaintRuleResourceK8sIoV1alpha3]. {@macro pulumi_resource_k8s_io_v1alpha3_device_taint_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceTaintRuleResourceK8sIoV1alpha3(
    String name, {
    DeviceTaintRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:resource.k8s.io/v1alpha3:DeviceTaintRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec = registerOutput<DeviceTaintRuleSpec>('spec');
    status = registerOutput<DeviceTaintRuleStatus?>('status');
  }
}
