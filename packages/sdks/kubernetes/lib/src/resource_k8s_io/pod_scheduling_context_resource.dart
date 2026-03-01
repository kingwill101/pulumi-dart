import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_scheduling_context_resource_k8s_io_v1alpha3_args.dart';
import 'pod_scheduling_context_spec_resource_k8s_io_v1alpha3.dart';
import 'pod_scheduling_context_status_resource_k8s_io_v1alpha3.dart';

/// PodSchedulingContext objects hold information that is needed to schedule a Pod with ResourceClaims that use "WaitForFirstConsumer" allocation mode.
///
/// This is an alpha type and requires enabling the DRAControlPlaneController feature gate.
class PodSchedulingContextResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec describes where resources for the Pod are needed.
  late final pulumi.Output<PodSchedulingContextSpecResourceK8sIoV1alpha3> spec;
  /// Status describes where resources for the Pod can be allocated.
  late final pulumi.Output<PodSchedulingContextStatusResourceK8sIoV1alpha3?> status;

  /// Creates a new [PodSchedulingContextResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodSchedulingContextResource]. {@macro pulumi_resource_k8s_io_v1alpha3_pod_scheduling_context_resource_k8s_io_v1alpha3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodSchedulingContextResource(
    String name, {
    PodSchedulingContextResourceK8sIoV1alpha3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha3:PodSchedulingContext',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<PodSchedulingContextSpecResourceK8sIoV1alpha3>('spec');
    this.status = registerOutput<PodSchedulingContextStatusResourceK8sIoV1alpha3?>('status');
  }
}
