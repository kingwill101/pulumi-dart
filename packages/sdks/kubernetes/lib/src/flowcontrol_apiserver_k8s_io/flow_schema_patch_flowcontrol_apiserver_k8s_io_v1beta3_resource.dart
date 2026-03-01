import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'flow_schema_patch_flowcontrol_apiserver_k8s_io_v1beta3_args.dart';
import 'flow_schema_spec_patch_flowcontrol_apiserver_k8s_io_v1beta3.dart';
import 'flow_schema_status_patch_flowcontrol_apiserver_k8s_io_v1beta3.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// FlowSchema defines the schema of a group of flows. Note that a flow is made up of a set of inbound API requests with similar attributes and is identified by a pair of strings: the name of the FlowSchema and a "flow distinguisher".
class FlowSchemaPatchFlowcontrolApiserverK8sIoV1beta3Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// `spec` is the specification of the desired behavior of a FlowSchema. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1beta3?> spec;
  /// `status` is the current status of a FlowSchema. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta3?> status;

  /// Creates a new [FlowSchemaPatchFlowcontrolApiserverK8sIoV1beta3Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowSchemaPatchFlowcontrolApiserverK8sIoV1beta3Resource]. {@macro pulumi_flowcontrol_apiserver_k8s_io_v1beta3_flow_schema_patch_flowcontrol_apiserver_k8s_io_v1beta3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowSchemaPatchFlowcontrolApiserverK8sIoV1beta3Resource(
    String name, {
    FlowSchemaPatchFlowcontrolApiserverK8sIoV1beta3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:flowcontrol.apiserver.k8s.io/v1beta3:FlowSchemaPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String?>('apiVersion');
    this.kind = registerOutput<String?>('kind');
    this.metadata = registerOutput<ObjectMetaPatch?>('metadata');
    this.spec = registerOutput<FlowSchemaSpecPatchFlowcontrolApiserverK8sIoV1beta3?>('spec');
    this.status = registerOutput<FlowSchemaStatusPatchFlowcontrolApiserverK8sIoV1beta3?>('status');
  }
}
