import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'workload_args.dart';
import 'workload_spec.dart';

/// Workload allows for expressing scheduling constraints that should be used when managing the lifecycle of workloads from the scheduling perspective, including scheduling, preemption, eviction and other phases. Workload API enablement is toggled by the GenericWorkload feature gate.
class WorkloadSchedulingK8sIoV1alpha2 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec defines the desired behavior of a Workload.
  late final pulumi.Output<WorkloadSpec> spec;

  /// Creates a new [WorkloadSchedulingK8sIoV1alpha2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadSchedulingK8sIoV1alpha2]. {@macro pulumi_scheduling_k8s_io_v1alpha2_workload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadSchedulingK8sIoV1alpha2(
    String name, {
    WorkloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:scheduling.k8s.io/v1alpha2:Workload',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<WorkloadSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkloadSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
