import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'flow_schema.dart';
import 'flow_schema_list_args.dart';

/// FlowSchemaList is a list of FlowSchema objects.
class FlowSchemaListFlowcontrolApiserverK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// `items` is a list of FlowSchemas.
  late final pulumi.Output<List<FlowSchema>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// `metadata` is the standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [FlowSchemaListFlowcontrolApiserverK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowSchemaListFlowcontrolApiserverK8sIoV1]. {@macro pulumi_flowcontrol_apiserver_k8s_io_v1_flow_schema_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowSchemaListFlowcontrolApiserverK8sIoV1(
    String name, {
    FlowSchemaListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:flowcontrol.apiserver.k8s.io/v1:FlowSchemaList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<FlowSchema>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowSchema>(guardedValue, (value) => FlowSchema.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [FlowSchemaListFlowcontrolApiserverK8sIoV1] resource.
  FlowSchemaListFlowcontrolApiserverK8sIoV1.reference(String urn)
    : super(
        'kubernetes:flowcontrol.apiserver.k8s.io/v1:FlowSchemaList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<FlowSchema>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowSchema>(guardedValue, (value) => FlowSchema.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
