import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'device_taint_rule_resource_k8s_io_v1alpha3_args.dart';
import 'device_taint_rule_spec_resource_k8s_io_v1alpha3.dart';
import 'device_taint_rule_status_resource_k8s_io_v1alpha3.dart';

/// DeviceTaintRule adds one taint to all devices which match the selector. This has the same effect as if the taint was specified directly in the ResourceSlice by the DRA driver.
class DeviceTaintRuleResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec specifies the selector and one taint.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  late final pulumi.Output<DeviceTaintRuleSpecResourceK8sIoV1alpha3> spec;
  /// Status provides information about what was requested in the spec.
  late final pulumi.Output<DeviceTaintRuleStatusResourceK8sIoV1alpha3?> status;

  /// Creates a new [DeviceTaintRuleResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceTaintRuleResource]. {@macro pulumi_resource_k8s_io_v1alpha3_device_taint_rule_resource_k8s_io_v1alpha3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceTaintRuleResource(
    String name, {
    DeviceTaintRuleResourceK8sIoV1alpha3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha3:DeviceTaintRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<DeviceTaintRuleSpecResourceK8sIoV1alpha3>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceTaintRuleSpecResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<DeviceTaintRuleStatusResourceK8sIoV1alpha3?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceTaintRuleStatusResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DeviceTaintRuleResource] resource.
  DeviceTaintRuleResource.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1alpha3:DeviceTaintRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<DeviceTaintRuleSpecResourceK8sIoV1alpha3>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceTaintRuleSpecResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<DeviceTaintRuleStatusResourceK8sIoV1alpha3?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceTaintRuleStatusResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
