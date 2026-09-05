import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'pod_group_patch_scheduling_k8s_io_v1alpha3_args.dart';
import 'pod_group_spec_patch_scheduling_k8s_io_v1alpha3.dart';
import 'pod_group_status_patch_scheduling_k8s_io_v1alpha3.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// PodGroup represents a runtime instance of pods grouped together. PodGroups are created by workload controllers (Job, LWS, JobSet, etc...) from Workload.podGroupTemplates. PodGroup API enablement is toggled by the GenericWorkload feature gate.
class PodGroupPatchSchedulingK8sIoV1alpha3Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// spec defines the desired state of the PodGroup.
  late final pulumi.Output<PodGroupSpecPatchSchedulingK8sIoV1alpha3?> spec;
  /// status represents the current observed state of the PodGroup.
  late final pulumi.Output<PodGroupStatusPatchSchedulingK8sIoV1alpha3?> status;

  /// Creates a new [PodGroupPatchSchedulingK8sIoV1alpha3Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodGroupPatchSchedulingK8sIoV1alpha3Resource]. {@macro pulumi_scheduling_k8s_io_v1alpha3_pod_group_patch_scheduling_k8s_io_v1alpha3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodGroupPatchSchedulingK8sIoV1alpha3Resource(
    String name, {
    PodGroupPatchSchedulingK8sIoV1alpha3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:scheduling.k8s.io/v1alpha3:PodGroupPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodGroupSpecPatchSchedulingK8sIoV1alpha3?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodGroupSpecPatchSchedulingK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodGroupStatusPatchSchedulingK8sIoV1alpha3?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodGroupStatusPatchSchedulingK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PodGroupPatchSchedulingK8sIoV1alpha3Resource] resource.
  PodGroupPatchSchedulingK8sIoV1alpha3Resource.reference(String urn)
    : super(
        'kubernetes:scheduling.k8s.io/v1alpha3:PodGroupPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodGroupSpecPatchSchedulingK8sIoV1alpha3?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodGroupSpecPatchSchedulingK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodGroupStatusPatchSchedulingK8sIoV1alpha3?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodGroupStatusPatchSchedulingK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
