import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'horizontal_pod_autoscaler_autoscaling_v1.dart';
import 'horizontal_pod_autoscaler_list_args.dart';

/// list of horizontal pod autoscaler objects.
class HorizontalPodAutoscalerListAutoscalingV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of horizontal pod autoscaler objects.
  late final pulumi.Output<List<HorizontalPodAutoscalerAutoscalingV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [HorizontalPodAutoscalerListAutoscalingV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HorizontalPodAutoscalerListAutoscalingV1]. {@macro pulumi_autoscaling_v1_horizontal_pod_autoscaler_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HorizontalPodAutoscalerListAutoscalingV1(
    String name, {
    HorizontalPodAutoscalerListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:autoscaling/v1:HorizontalPodAutoscalerList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<HorizontalPodAutoscalerAutoscalingV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
