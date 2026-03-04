import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_dataset_response.dart';
import 'folder_bucket_link_args.dart';

/// Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to read the logs stored in the log bucket. A log bucket may currently only contain one link.
/// Auto-naming is currently not supported for this resource.
class FolderBucketLink extends pulumi.CustomResource {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery Views corresponding to the LogViews in the bucket.
  late final pulumi.Output<BigQueryDatasetResponse> bigqueryDataset;
  late final pulumi.Output<String> bucketId;

  /// The creation timestamp of the link.
  late final pulumi.Output<String> createTime;

  /// Describes this link.The maximum length of the description is 8000 characters.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> folderId;

  /// The resource lifecycle state.
  late final pulumi.Output<String> lifecycleState;

  /// Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id must only have alphanumeric characters and underscores within it.
  late final pulumi.Output<String> linkId;
  late final pulumi.Output<String> location;

  /// The resource name of the link. The name can have up to 100 characters. A valid link id (at the end of the link name) must only have alphanumeric characters and underscores within it. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" For example:`projects/my-project/locations/global/buckets/my-bucket/links/my_link
  late final pulumi.Output<String> name;

  /// Creates a new [FolderBucketLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderBucketLink]. {@macro pulumi_logging_v2_folder_bucket_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderBucketLink(
    String name, {
    FolderBucketLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:logging/v2:FolderBucketLink',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bigqueryDataset = registerOutput<BigQueryDatasetResponse>(
      'bigqueryDataset',
    );
    bucketId = registerOutput<String>('bucketId');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    folderId = registerOutput<String>('folderId');
    lifecycleState = registerOutput<String>('lifecycleState');
    linkId = registerOutput<String>('linkId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
  }
}
