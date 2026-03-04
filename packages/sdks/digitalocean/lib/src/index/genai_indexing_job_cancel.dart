import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_indexing_job_cancel_args.dart';
import 'genai_indexing_job_cancel_state.dart';

class GenaiIndexingJobCancel extends pulumi.CustomResource {
  /// Number of data sources that were completed before cancellation.
  late final pulumi.Output<int> completedDatasources;

  /// When the indexing job was created.
  late final pulumi.Output<String> createdAt;

  /// List of data source UUIDs associated with this indexing job.
  late final pulumi.Output<List<String>> dataSourceUuids;

  /// When the indexing job was finished.
  late final pulumi.Output<String> finishedAt;

  /// The UUID of the knowledge base associated with this indexing job.
  late final pulumi.Output<String> knowledgeBaseUuid;

  /// Current phase of the indexing job.
  late final pulumi.Output<String> phase;

  /// When the indexing job was started.
  late final pulumi.Output<String> startedAt;

  /// The status of the indexing job after cancellation.
  late final pulumi.Output<String> status;

  /// Number of tokens processed before cancellation.
  late final pulumi.Output<int> tokens;

  /// Total number of data sources in the indexing job.
  late final pulumi.Output<int> totalDatasources;

  /// Total number of items that failed during indexing.
  late final pulumi.Output<int> totalItemsFailed;

  /// Total number of items that were successfully indexed.
  late final pulumi.Output<int> totalItemsIndexed;

  /// Total number of items that were skipped during indexing.
  late final pulumi.Output<int> totalItemsSkipped;

  /// When the indexing job was last updated.
  late final pulumi.Output<String> updatedAt;

  /// The UUID of the indexing job to cancel.
  late final pulumi.Output<String> uuid;

  /// Creates a new [GenaiIndexingJobCancel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiIndexingJobCancel]. {@macro pulumi_index_genai_indexing_job_cancel_genai_indexing_job_cancel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiIndexingJobCancel(
    String name, {
    GenaiIndexingJobCancelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/genaiIndexingJobCancel:GenaiIndexingJobCancel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    completedDatasources = registerOutput<int>('completedDatasources');
    createdAt = registerOutput<String>('createdAt');
    dataSourceUuids = registerOutput<List<String>>('dataSourceUuids');
    finishedAt = registerOutput<String>('finishedAt');
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
    phase = registerOutput<String>('phase');
    startedAt = registerOutput<String>('startedAt');
    status = registerOutput<String>('status');
    tokens = registerOutput<int>('tokens');
    totalDatasources = registerOutput<int>('totalDatasources');
    totalItemsFailed = registerOutput<int>('totalItemsFailed');
    totalItemsIndexed = registerOutput<int>('totalItemsIndexed');
    totalItemsSkipped = registerOutput<int>('totalItemsSkipped');
    updatedAt = registerOutput<String>('updatedAt');
    uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [GenaiIndexingJobCancel] resource's state with the given [name] and [id].
  static GenaiIndexingJobCancel get(
    String name,
    pulumi.Input<String> id, {
    GenaiIndexingJobCancelState? state,
  }) {
    return GenaiIndexingJobCancel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GenaiIndexingJobCancel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/genaiIndexingJobCancel:GenaiIndexingJobCancel',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    completedDatasources = registerOutput<int>('completedDatasources');
    createdAt = registerOutput<String>('createdAt');
    dataSourceUuids = registerOutput<List<String>>('dataSourceUuids');
    finishedAt = registerOutput<String>('finishedAt');
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
    phase = registerOutput<String>('phase');
    startedAt = registerOutput<String>('startedAt');
    status = registerOutput<String>('status');
    tokens = registerOutput<int>('tokens');
    totalDatasources = registerOutput<int>('totalDatasources');
    totalItemsFailed = registerOutput<int>('totalItemsFailed');
    totalItemsIndexed = registerOutput<int>('totalItemsIndexed');
    totalItemsSkipped = registerOutput<int>('totalItemsSkipped');
    updatedAt = registerOutput<String>('updatedAt');
    uuid = registerOutput<String>('uuid');
  }
}
