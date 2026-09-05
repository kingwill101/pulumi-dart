import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'flow_schema_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'flow_schema_list_flowcontrol_apiserver_k8s_io_v1alpha1_args.dart';

/// FlowSchemaList is a list of FlowSchema objects.
class FlowSchemaListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// `items` is a list of FlowSchemas.
  late final pulumi.Output<List<FlowSchemaFlowcontrolApiserverK8sIoV1alpha1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// `metadata` is the standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [FlowSchemaListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowSchemaListResource]. {@macro pulumi_flowcontrol_apiserver_k8s_io_v1alpha1_flow_schema_list_flowcontrol_apiserver_k8s_io_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowSchemaListResource(
    String name, {
    FlowSchemaListFlowcontrolApiserverK8sIoV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:flowcontrol.apiserver.k8s.io/v1alpha1:FlowSchemaList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<FlowSchemaFlowcontrolApiserverK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowSchemaFlowcontrolApiserverK8sIoV1alpha1>(guardedValue, (value) => FlowSchemaFlowcontrolApiserverK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [FlowSchemaListResource] resource.
  FlowSchemaListResource.reference(String urn)
    : super(
        'kubernetes:flowcontrol.apiserver.k8s.io/v1alpha1:FlowSchemaList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<FlowSchemaFlowcontrolApiserverK8sIoV1alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowSchemaFlowcontrolApiserverK8sIoV1alpha1>(guardedValue, (value) => FlowSchemaFlowcontrolApiserverK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
