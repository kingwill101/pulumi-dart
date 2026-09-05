import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_scheduling_args.dart';
import 'pod_scheduling_spec.dart';
import 'pod_scheduling_status.dart';

/// PodScheduling objects hold information that is needed to schedule a Pod with ResourceClaims that use "WaitForFirstConsumer" allocation mode.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class PodSchedulingResourceK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec describes where resources for the Pod are needed.
  late final pulumi.Output<PodSchedulingSpec> spec;
  /// Status describes where resources for the Pod can be allocated.
  late final pulumi.Output<PodSchedulingStatus?> status;

  /// Creates a new [PodSchedulingResourceK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodSchedulingResourceK8sIoV1alpha1]. {@macro pulumi_resource_k8s_io_v1alpha1_pod_scheduling_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodSchedulingResourceK8sIoV1alpha1(
    String name, {
    PodSchedulingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha1:PodScheduling',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodSchedulingSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodSchedulingSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodSchedulingStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodSchedulingStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PodSchedulingResourceK8sIoV1alpha1] resource.
  PodSchedulingResourceK8sIoV1alpha1.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1alpha1:PodScheduling',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodSchedulingSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodSchedulingSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodSchedulingStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodSchedulingStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
