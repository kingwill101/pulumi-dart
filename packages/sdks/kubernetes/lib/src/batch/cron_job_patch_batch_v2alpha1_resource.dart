import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'cron_job_patch_batch_v2alpha1_args.dart';
import 'cron_job_spec_patch_batch_v2alpha1.dart';
import 'cron_job_status_patch_batch_v2alpha1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// CronJob represents the configuration of a single cron job.
class CronJobPatchBatchV2alpha1Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;

  /// Specification of the desired behavior of a cron job, including the schedule. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<CronJobSpecPatchBatchV2alpha1?> spec;

  /// Current status of a cron job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<CronJobStatusPatchBatchV2alpha1?> status;

  /// Creates a new [CronJobPatchBatchV2alpha1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CronJobPatchBatchV2alpha1Resource]. {@macro pulumi_batch_v2alpha1_cron_job_patch_batch_v2alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CronJobPatchBatchV2alpha1Resource(
    String name, {
    CronJobPatchBatchV2alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:batch/v2alpha1:CronJobPatch',
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
    spec = registerOutput<CronJobSpecPatchBatchV2alpha1?>(
      'spec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CronJobSpecPatchBatchV2alpha1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<CronJobStatusPatchBatchV2alpha1?>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CronJobStatusPatchBatchV2alpha1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
