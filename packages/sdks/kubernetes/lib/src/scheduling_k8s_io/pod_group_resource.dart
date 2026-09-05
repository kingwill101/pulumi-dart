import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_group_args.dart';
import 'pod_group_spec.dart';
import 'pod_group_status.dart';

/// PodGroup represents a runtime instance of pods grouped together. PodGroups are created by workload controllers (Job, LWS, JobSet, etc...) from Workload.podGroupTemplates. PodGroup API enablement is toggled by the GenericWorkload feature gate.
class PodGroupResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec defines the desired state of the PodGroup.
  late final pulumi.Output<PodGroupSpec> spec;
  /// Status represents the current observed state of the PodGroup.
  late final pulumi.Output<PodGroupStatus?> status;

  /// Creates a new [PodGroupResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodGroupResource]. {@macro pulumi_scheduling_k8s_io_v1alpha2_pod_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodGroupResource(
    String name, {
    PodGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:scheduling.k8s.io/v1alpha2:PodGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodGroupSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodGroupSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodGroupStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodGroupStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PodGroupResource] resource.
  PodGroupResource.reference(String urn)
    : super(
        'kubernetes:scheduling.k8s.io/v1alpha2:PodGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodGroupSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodGroupSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodGroupStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodGroupStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
