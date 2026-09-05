import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'composite_pod_group_patch_args.dart';
import 'composite_pod_group_spec_patch.dart';
import 'composite_pod_group_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// CompositePodGroup represents a runtime instance of pod groups grouped together. CompositePodGroups are created by workload controllers (LWS, JobSet, etc...) from Workload.compositePodGroupTemplates. CompositePodGroup API enablement is toggled by the CompositePodGroup feature gate.
class CompositePodGroupPatchSchedulingK8sIoV1alpha3 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// spec defines the desired state of the CompositePodGroup.
  late final pulumi.Output<CompositePodGroupSpecPatch?> spec;
  /// status represents the current observed state of the CompositePodGroup.
  late final pulumi.Output<CompositePodGroupStatusPatch?> status;

  /// Creates a new [CompositePodGroupPatchSchedulingK8sIoV1alpha3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CompositePodGroupPatchSchedulingK8sIoV1alpha3]. {@macro pulumi_scheduling_k8s_io_v1alpha3_composite_pod_group_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CompositePodGroupPatchSchedulingK8sIoV1alpha3(
    String name, {
    CompositePodGroupPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:scheduling.k8s.io/v1alpha3:CompositePodGroupPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<CompositePodGroupSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CompositePodGroupSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<CompositePodGroupStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CompositePodGroupStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CompositePodGroupPatchSchedulingK8sIoV1alpha3] resource.
  CompositePodGroupPatchSchedulingK8sIoV1alpha3.reference(String urn)
    : super(
        'kubernetes:scheduling.k8s.io/v1alpha3:CompositePodGroupPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<CompositePodGroupSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CompositePodGroupSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<CompositePodGroupStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CompositePodGroupStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
