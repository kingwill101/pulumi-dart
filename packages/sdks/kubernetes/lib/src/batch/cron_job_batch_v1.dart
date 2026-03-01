import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'cron_job_args.dart';
import 'cron_job_spec.dart';
import 'cron_job_status.dart';

/// CronJob represents the configuration of a single cron job.
class CronJobBatchV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Specification of the desired behavior of a cron job, including the schedule. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<CronJobSpec> spec;
  /// Current status of a cron job. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  late final pulumi.Output<CronJobStatus?> status;

  /// Creates a new [CronJobBatchV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CronJobBatchV1]. {@macro pulumi_batch_v1_cron_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CronJobBatchV1(
    String name, {
    CronJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:batch/v1:CronJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.spec = registerOutput<CronJobSpec>('spec');
    this.status = registerOutput<CronJobStatus?>('status');
  }
}
