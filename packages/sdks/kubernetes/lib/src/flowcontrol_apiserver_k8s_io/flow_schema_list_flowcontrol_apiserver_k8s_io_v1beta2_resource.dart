import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'flow_schema_list_flowcontrol_apiserver_k8s_io_v1beta2_args.dart';

/// FlowSchemaList is a list of FlowSchema objects.
class FlowSchemaListFlowcontrolApiserverK8sIoV1beta2Resource
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// `items` is a list of FlowSchemas.
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// `metadata` is the standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [FlowSchemaListFlowcontrolApiserverK8sIoV1beta2Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowSchemaListFlowcontrolApiserverK8sIoV1beta2Resource]. {@macro pulumi_flowcontrol_apiserver_k8s_io_v1beta2_flow_schema_list_flowcontrol_apiserver_k8s_io_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowSchemaListFlowcontrolApiserverK8sIoV1beta2Resource(
    String name, {
    FlowSchemaListFlowcontrolApiserverK8sIoV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:flowcontrol.apiserver.k8s.io/v1beta2:FlowSchemaList',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<Map<String, dynamic>>>('items');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>());
      },
    );
  }
}
