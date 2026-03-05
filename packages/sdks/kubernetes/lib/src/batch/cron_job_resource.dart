import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'cron_job_batch_v1beta1_args.dart';
import 'cron_job_spec_batch_v1beta1.dart';
import 'cron_job_status_batch_v1beta1.dart';

/// CronJob represents the configuration of a single cron job.
class CronJobResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// Specification of the desired behavior of a cron job, including the schedule. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<CronJobSpecBatchV1beta1> spec;

  /// Current status of a cron job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<CronJobStatusBatchV1beta1?> status;

  /// Creates a new [CronJobResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CronJobResource]. {@macro pulumi_batch_v1beta1_cron_job_batch_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CronJobResource(
    String name, {
    CronJobBatchV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:batch/v1beta1:CronJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectMeta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spec = registerOutput<CronJobSpecBatchV1beta1>(
      'spec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CronJobSpecBatchV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<CronJobStatusBatchV1beta1?>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CronJobStatusBatchV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
