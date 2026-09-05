import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'composite_pod_group_args.dart';
import 'composite_pod_group_spec.dart';
import 'composite_pod_group_status.dart';

/// CompositePodGroup represents a runtime instance of pod groups grouped together. CompositePodGroups are created by workload controllers (LWS, JobSet, etc...) from Workload.compositePodGroupTemplates. CompositePodGroup API enablement is toggled by the CompositePodGroup feature gate.
class CompositePodGroupSchedulingK8sIoV1alpha3 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec defines the desired state of the CompositePodGroup.
  late final pulumi.Output<CompositePodGroupSpec> spec;
  /// status represents the current observed state of the CompositePodGroup.
  late final pulumi.Output<CompositePodGroupStatus?> status;

  /// Creates a new [CompositePodGroupSchedulingK8sIoV1alpha3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CompositePodGroupSchedulingK8sIoV1alpha3]. {@macro pulumi_scheduling_k8s_io_v1alpha3_composite_pod_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CompositePodGroupSchedulingK8sIoV1alpha3(
    String name, {
    CompositePodGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:scheduling.k8s.io/v1alpha3:CompositePodGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<CompositePodGroupSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CompositePodGroupSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<CompositePodGroupStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CompositePodGroupStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CompositePodGroupSchedulingK8sIoV1alpha3] resource.
  CompositePodGroupSchedulingK8sIoV1alpha3.reference(String urn)
    : super(
        'kubernetes:scheduling.k8s.io/v1alpha3:CompositePodGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<CompositePodGroupSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CompositePodGroupSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<CompositePodGroupStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CompositePodGroupStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
