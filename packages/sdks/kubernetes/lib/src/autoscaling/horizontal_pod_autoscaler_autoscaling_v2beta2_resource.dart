import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'horizontal_pod_autoscaler_autoscaling_v2beta2_args.dart';
import 'horizontal_pod_autoscaler_spec_autoscaling_v2beta2.dart';
import 'horizontal_pod_autoscaler_status_autoscaling_v2beta2.dart';

/// HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which automatically manages the replica count of any resource implementing the scale subresource based on the metrics specified.
class HorizontalPodAutoscalerAutoscalingV2beta2Resource
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// spec is the specification for the behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  late final pulumi.Output<HorizontalPodAutoscalerSpecAutoscalingV2beta2> spec;

  /// status is the current information about the autoscaler.
  late final pulumi.Output<HorizontalPodAutoscalerStatusAutoscalingV2beta2?>
  status;

  /// Creates a new [HorizontalPodAutoscalerAutoscalingV2beta2Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HorizontalPodAutoscalerAutoscalingV2beta2Resource]. {@macro pulumi_autoscaling_v2beta2_horizontal_pod_autoscaler_autoscaling_v2beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HorizontalPodAutoscalerAutoscalingV2beta2Resource(
    String name, {
    HorizontalPodAutoscalerAutoscalingV2beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:autoscaling/v2beta2:HorizontalPodAutoscaler',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec = registerOutput<HorizontalPodAutoscalerSpecAutoscalingV2beta2>(
      'spec',
    );
    status = registerOutput<HorizontalPodAutoscalerStatusAutoscalingV2beta2?>(
      'status',
    );
  }
}
