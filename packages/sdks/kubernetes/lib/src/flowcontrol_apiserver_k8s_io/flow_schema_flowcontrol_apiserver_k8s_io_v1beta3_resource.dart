import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'flow_schema_flowcontrol_apiserver_k8s_io_v1beta3_args.dart';
import 'flow_schema_spec_flowcontrol_apiserver_k8s_io_v1beta3.dart';
import 'flow_schema_status_flowcontrol_apiserver_k8s_io_v1beta3.dart';

/// FlowSchema defines the schema of a group of flows. Note that a flow is made up of a set of inbound API requests with similar attributes and is identified by a pair of strings: the name of the FlowSchema and a "flow distinguisher".
class FlowSchemaFlowcontrolApiserverK8sIoV1beta3Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// `spec` is the specification of the desired behavior of a FlowSchema. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta3> spec;
  /// `status` is the current status of a FlowSchema. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<FlowSchemaStatusFlowcontrolApiserverK8sIoV1beta3?> status;

  /// Creates a new [FlowSchemaFlowcontrolApiserverK8sIoV1beta3Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowSchemaFlowcontrolApiserverK8sIoV1beta3Resource]. {@macro pulumi_flowcontrol_apiserver_k8s_io_v1beta3_flow_schema_flowcontrol_apiserver_k8s_io_v1beta3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowSchemaFlowcontrolApiserverK8sIoV1beta3Resource(
    String name, {
    FlowSchemaFlowcontrolApiserverK8sIoV1beta3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:flowcontrol.apiserver.k8s.io/v1beta3:FlowSchema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta3>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<FlowSchemaStatusFlowcontrolApiserverK8sIoV1beta3?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowSchemaStatusFlowcontrolApiserverK8sIoV1beta3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [FlowSchemaFlowcontrolApiserverK8sIoV1beta3Resource] resource.
  FlowSchemaFlowcontrolApiserverK8sIoV1beta3Resource.reference(String urn)
    : super(
        'kubernetes:flowcontrol.apiserver.k8s.io/v1beta3:FlowSchema',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta3>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowSchemaSpecFlowcontrolApiserverK8sIoV1beta3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<FlowSchemaStatusFlowcontrolApiserverK8sIoV1beta3?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowSchemaStatusFlowcontrolApiserverK8sIoV1beta3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
