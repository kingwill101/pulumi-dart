import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'horizontal_pod_autoscaler_list_autoscaling_v2_args.dart';

/// HorizontalPodAutoscalerList is a list of horizontal pod autoscaler objects.
class HorizontalPodAutoscalerListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// items is the list of horizontal pod autoscaler objects.
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// metadata is the standard list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [HorizontalPodAutoscalerListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HorizontalPodAutoscalerListResource]. {@macro pulumi_autoscaling_v2_horizontal_pod_autoscaler_list_autoscaling_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HorizontalPodAutoscalerListResource(
    String name, {
    HorizontalPodAutoscalerListAutoscalingV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:autoscaling/v2:HorizontalPodAutoscalerList',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<Map<String, dynamic>>>('items');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata');
  }
}
