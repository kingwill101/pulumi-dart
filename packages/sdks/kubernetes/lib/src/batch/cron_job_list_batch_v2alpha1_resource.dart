import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'cron_job_batch_v2alpha1.dart';
import 'cron_job_list_batch_v2alpha1_args.dart';

/// CronJobList is a collection of cron jobs.
class CronJobListBatchV2alpha1Resource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of CronJobs.
  late final pulumi.Output<List<CronJobBatchV2alpha1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [CronJobListBatchV2alpha1Resource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CronJobListBatchV2alpha1Resource]. {@macro pulumi_batch_v2alpha1_cron_job_list_batch_v2alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CronJobListBatchV2alpha1Resource(
    String name, {
    CronJobListBatchV2alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:batch/v2alpha1:CronJobList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<CronJobBatchV2alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CronJobBatchV2alpha1>(guardedValue, (value) => CronJobBatchV2alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CronJobListBatchV2alpha1Resource] resource.
  CronJobListBatchV2alpha1Resource.reference(String urn)
    : super(
        'kubernetes:batch/v2alpha1:CronJobList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<CronJobBatchV2alpha1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CronJobBatchV2alpha1>(guardedValue, (value) => CronJobBatchV2alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
