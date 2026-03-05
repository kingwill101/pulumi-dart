import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'horizontal_pod_autoscaler_patch_autoscaling_v2beta1_args.dart';
import 'horizontal_pod_autoscaler_spec_patch_autoscaling_v2beta1.dart';
import 'horizontal_pod_autoscaler_status_patch_autoscaling_v2beta1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which automatically manages the replica count of any resource implementing the scale subresource based on the metrics specified.
class HorizontalPodAutoscalerPatchAutoscalingV2beta1Resource
    extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// spec is the specification for the behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  late final pulumi.Output<HorizontalPodAutoscalerSpecPatchAutoscalingV2beta1?>
  spec;

  /// status is the current information about the autoscaler.
  late final pulumi.Output<
    HorizontalPodAutoscalerStatusPatchAutoscalingV2beta1?
  >
  status;

  /// Creates a new [HorizontalPodAutoscalerPatchAutoscalingV2beta1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HorizontalPodAutoscalerPatchAutoscalingV2beta1Resource]. {@macro pulumi_autoscaling_v2beta1_horizontal_pod_autoscaler_patch_autoscaling_v2beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HorizontalPodAutoscalerPatchAutoscalingV2beta1Resource(
    String name, {
    HorizontalPodAutoscalerPatchAutoscalingV2beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:autoscaling/v2beta1:HorizontalPodAutoscalerPatch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMetaPatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spec = registerOutput<HorizontalPodAutoscalerSpecPatchAutoscalingV2beta1?>(
      'spec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HorizontalPodAutoscalerSpecPatchAutoscalingV2beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status =
        registerOutput<HorizontalPodAutoscalerStatusPatchAutoscalingV2beta1?>(
          'status',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return HorizontalPodAutoscalerStatusPatchAutoscalingV2beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
