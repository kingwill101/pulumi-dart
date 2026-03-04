import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'priority_level_configuration_list_flowcontrol_apiserver_k8s_io_v1beta3_args.dart';

/// PriorityLevelConfigurationList is a list of PriorityLevelConfiguration objects.
class PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1beta3Resource
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// `items` is a list of request-priorities.
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1beta3Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1beta3Resource]. {@macro pulumi_flowcontrol_apiserver_k8s_io_v1beta3_priority_level_configuration_list_flowcontrol_apiserver_k8s_io_v1beta3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1beta3Resource(
    String name, {
    PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1beta3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:flowcontrol.apiserver.k8s.io/v1beta3:PriorityLevelConfigurationList',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<Map<String, dynamic>>>('items');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata');
  }
}
