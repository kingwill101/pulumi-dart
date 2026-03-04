import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'priority_level_configuration_flowcontrol_apiserver_k8s_io_v1alpha1_args.dart';
import 'priority_level_configuration_spec_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'priority_level_configuration_status_flowcontrol_apiserver_k8s_io_v1alpha1.dart';

/// PriorityLevelConfiguration represents the configuration of a priority level.
class PriorityLevelConfigurationResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// `spec` is the specification of the desired behavior of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<
    PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1alpha1
  >
  spec;

  /// `status` is the current status of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<
    PriorityLevelConfigurationStatusFlowcontrolApiserverK8sIoV1alpha1?
  >
  status;

  /// Creates a new [PriorityLevelConfigurationResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PriorityLevelConfigurationResource]. {@macro pulumi_flowcontrol_apiserver_k8s_io_v1alpha1_priority_level_configuration_flowcontrol_apiserver_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PriorityLevelConfigurationResource(
    String name, {
    PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:flowcontrol.apiserver.k8s.io/v1alpha1:PriorityLevelConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec =
        registerOutput<
          PriorityLevelConfigurationSpecFlowcontrolApiserverK8sIoV1alpha1
        >('spec');
    status =
        registerOutput<
          PriorityLevelConfigurationStatusFlowcontrolApiserverK8sIoV1alpha1?
        >('status');
  }
}
