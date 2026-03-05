import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'horizontal_pod_autoscaler_autoscaling_v2_args.dart';
import 'horizontal_pod_autoscaler_spec_autoscaling_v2.dart';
import 'horizontal_pod_autoscaler_status_autoscaling_v2.dart';

/// HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which automatically manages the replica count of any resource implementing the scale subresource based on the metrics specified.
class HorizontalPodAutoscalerResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec is the specification for the behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  late final pulumi.Output<HorizontalPodAutoscalerSpecAutoscalingV2> spec;
  /// status is the current information about the autoscaler.
  late final pulumi.Output<HorizontalPodAutoscalerStatusAutoscalingV2?> status;

  /// Creates a new [HorizontalPodAutoscalerResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HorizontalPodAutoscalerResource]. {@macro pulumi_autoscaling_v2_horizontal_pod_autoscaler_autoscaling_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HorizontalPodAutoscalerResource(
    String name, {
    HorizontalPodAutoscalerAutoscalingV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:autoscaling/v2:HorizontalPodAutoscaler',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<HorizontalPodAutoscalerSpecAutoscalingV2>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HorizontalPodAutoscalerSpecAutoscalingV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<HorizontalPodAutoscalerStatusAutoscalingV2?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HorizontalPodAutoscalerStatusAutoscalingV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
