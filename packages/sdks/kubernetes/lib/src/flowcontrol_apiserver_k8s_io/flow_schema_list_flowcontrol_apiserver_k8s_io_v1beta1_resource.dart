import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'flow_schema_flowcontrol_apiserver_k8s_io_v1beta1.dart';
import 'flow_schema_list_flowcontrol_apiserver_k8s_io_v1beta1_args.dart';

/// FlowSchemaList is a list of FlowSchema objects.
class FlowSchemaListFlowcontrolApiserverK8sIoV1beta1Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// `items` is a list of FlowSchemas.
  late final pulumi.Output<List<FlowSchemaFlowcontrolApiserverK8sIoV1beta1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// `metadata` is the standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [FlowSchemaListFlowcontrolApiserverK8sIoV1beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowSchemaListFlowcontrolApiserverK8sIoV1beta1Resource]. {@macro pulumi_flowcontrol_apiserver_k8s_io_v1beta1_flow_schema_list_flowcontrol_apiserver_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowSchemaListFlowcontrolApiserverK8sIoV1beta1Resource(
    String name, {
    FlowSchemaListFlowcontrolApiserverK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:flowcontrol.apiserver.k8s.io/v1beta1:FlowSchemaList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<FlowSchemaFlowcontrolApiserverK8sIoV1beta1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowSchemaFlowcontrolApiserverK8sIoV1beta1>(guardedValue, (value) => FlowSchemaFlowcontrolApiserverK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [FlowSchemaListFlowcontrolApiserverK8sIoV1beta1Resource] resource.
  FlowSchemaListFlowcontrolApiserverK8sIoV1beta1Resource.reference(String urn)
    : super(
        'kubernetes:flowcontrol.apiserver.k8s.io/v1beta1:FlowSchemaList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<FlowSchemaFlowcontrolApiserverK8sIoV1beta1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowSchemaFlowcontrolApiserverK8sIoV1beta1>(guardedValue, (value) => FlowSchemaFlowcontrolApiserverK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
