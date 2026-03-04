import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'priority_level_configuration_patch_flowcontrol_apiserver_k8s_io_v1beta1_args.dart';
import 'priority_level_configuration_spec_patch_flowcontrol_apiserver_k8s_io_v1beta1.dart';
import 'priority_level_configuration_status_patch_flowcontrol_apiserver_k8s_io_v1beta1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// PriorityLevelConfiguration represents the configuration of a priority level.
class PriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta1Resource
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// `spec` is the specification of the desired behavior of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<
    PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1beta1?
  >
  spec;

  /// `status` is the current status of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<
    PriorityLevelConfigurationStatusPatchFlowcontrolApiserverK8sIoV1beta1?
  >
  status;

  /// Creates a new [PriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta1Resource]. {@macro pulumi_flowcontrol_apiserver_k8s_io_v1beta1_priority_level_configuration_patch_flowcontrol_apiserver_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta1Resource(
    String name, {
    PriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:flowcontrol.apiserver.k8s.io/v1beta1:PriorityLevelConfigurationPatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata');
    spec =
        registerOutput<
          PriorityLevelConfigurationSpecPatchFlowcontrolApiserverK8sIoV1beta1?
        >('spec');
    status =
        registerOutput<
          PriorityLevelConfigurationStatusPatchFlowcontrolApiserverK8sIoV1beta1?
        >('status');
  }
}
