import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'priority_level_configuration_args.dart';
import 'priority_level_configuration_spec.dart';
import 'priority_level_configuration_status.dart';

/// PriorityLevelConfiguration represents the configuration of a priority level.
class PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// `spec` is the specification of the desired behavior of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<PriorityLevelConfigurationSpec> spec;

  /// `status` is the current status of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<PriorityLevelConfigurationStatus?> status;

  /// Creates a new [PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1]. {@macro pulumi_flowcontrol_apiserver_k8s_io_v1_priority_level_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1(
    String name, {
    PriorityLevelConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:flowcontrol.apiserver.k8s.io/v1:PriorityLevelConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec = registerOutput<PriorityLevelConfigurationSpec>('spec');
    status = registerOutput<PriorityLevelConfigurationStatus?>('status');
  }
}
