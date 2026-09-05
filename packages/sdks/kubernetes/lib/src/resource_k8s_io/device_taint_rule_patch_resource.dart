import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'device_taint_rule_patch_resource_k8s_io_v1alpha3_args.dart';
import 'device_taint_rule_spec_patch_resource_k8s_io_v1alpha3.dart';
import 'device_taint_rule_status_patch_resource_k8s_io_v1alpha3.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// DeviceTaintRule adds one taint to all devices which match the selector. This has the same effect as if the taint was specified directly in the ResourceSlice by the DRA driver.
class DeviceTaintRulePatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Spec specifies the selector and one taint.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  late final pulumi.Output<DeviceTaintRuleSpecPatchResourceK8sIoV1alpha3?> spec;
  /// Status provides information about what was requested in the spec.
  late final pulumi.Output<DeviceTaintRuleStatusPatchResourceK8sIoV1alpha3?> status;

  /// Creates a new [DeviceTaintRulePatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeviceTaintRulePatchResource]. {@macro pulumi_resource_k8s_io_v1alpha3_device_taint_rule_patch_resource_k8s_io_v1alpha3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeviceTaintRulePatchResource(
    String name, {
    DeviceTaintRulePatchResourceK8sIoV1alpha3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha3:DeviceTaintRulePatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<DeviceTaintRuleSpecPatchResourceK8sIoV1alpha3?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceTaintRuleSpecPatchResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<DeviceTaintRuleStatusPatchResourceK8sIoV1alpha3?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceTaintRuleStatusPatchResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DeviceTaintRulePatchResource] resource.
  DeviceTaintRulePatchResource.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1alpha3:DeviceTaintRulePatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<DeviceTaintRuleSpecPatchResourceK8sIoV1alpha3?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceTaintRuleSpecPatchResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<DeviceTaintRuleStatusPatchResourceK8sIoV1alpha3?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceTaintRuleStatusPatchResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
