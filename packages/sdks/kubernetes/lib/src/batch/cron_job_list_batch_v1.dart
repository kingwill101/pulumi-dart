import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'cron_job_list_args.dart';

/// CronJobList is a collection of cron jobs.
class CronJobListBatchV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// items is the list of CronJobs.
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [CronJobListBatchV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CronJobListBatchV1]. {@macro pulumi_batch_v1_cron_job_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CronJobListBatchV1(
    String name, {
    CronJobListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:batch/v1:CronJobList',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<Map<String, dynamic>>>('items');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>(
      'metadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>());
      },
    );
  }
}
