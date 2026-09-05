import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'priority_level_configuration_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'priority_level_configuration_list_flowcontrol_apiserver_k8s_io_v1alpha1_args.dart';

/// PriorityLevelConfigurationList is a list of PriorityLevelConfiguration objects.
class PriorityLevelConfigurationListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// `items` is a list of request-priorities.
  late final pulumi.Output<List<PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [PriorityLevelConfigurationListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PriorityLevelConfigurationListResource]. {@macro pulumi_flowcontrol_apiserver_k8s_io_v1alpha1_priority_level_configuration_list_flowcontrol_apiserver_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PriorityLevelConfigurationListResource(
    String name, {
    PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:flowcontrol.apiserver.k8s.io/v1alpha1:PriorityLevelConfigurationList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1>(guardedValue, (value) => PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PriorityLevelConfigurationListResource] resource.
  PriorityLevelConfigurationListResource.reference(String urn)
    : super(
        'kubernetes:flowcontrol.apiserver.k8s.io/v1alpha1:PriorityLevelConfigurationList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1>(guardedValue, (value) => PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
