// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_link_args_doc}
/// The set of arguments for Link.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_link_args_doc}
class LinkArgs {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery Views corresponding to the LogViews in the bucket.
  final pulumi.Input<Map<String, dynamic>>? bigqueryDataset;
  final pulumi.Input<String> bucketId;
  /// Describes this link.The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;
  /// Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id must only have alphanumeric characters and underscores within it.
  final pulumi.Input<String> linkId;
  final pulumi.Input<String>? location;
  /// The resource name of the link. The name can have up to 100 characters. A valid link id (at the end of the link name) must only have alphanumeric characters and underscores within it. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" For example:`projects/my-project/locations/global/buckets/my-bucket/links/my_link
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [LinkArgs].
  /// [bigqueryDataset] The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery Views corresponding to the LogViews in the bucket.
  /// [bucketId] Required.
  /// [description] Describes this link.The maximum length of the description is 8000 characters.
  /// [linkId] Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id must only have alphanumeric characters and underscores within it.
  /// [location] Optional.
  /// [name] The resource name of the link. The name can have up to 100 characters. A valid link id (at the end of the link name) must only have alphanumeric characters and underscores within it. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" For example:`projects/my-project/locations/global/buckets/my-bucket/links/my_link
  /// [project] Optional.
  LinkArgs({
    pulumi.Output<Map<String, dynamic>>? bigqueryDataset,
    required pulumi.Output<String> bucketId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> linkId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      bigqueryDataset = pulumi.Input.asOptionalInput<Map<String, dynamic>>(bigqueryDataset),
      bucketId = pulumi.Input.asInput<String>(bucketId),
      description = pulumi.Input.asOptionalInput<String>(description),
      linkId = pulumi.Input.asInput<String>(linkId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDataset': ?bigqueryDataset,
      'bucketId': bucketId,
      'description': ?description,
      'linkId': linkId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory LinkArgs.fromMap(Map<String, dynamic> map) {
    return LinkArgs(
      bigqueryDataset: map['bigqueryDataset'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['bigqueryDataset'] as Map).cast<String, dynamic>()),
      bucketId: pulumi.Output.create<String>(map['bucketId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      linkId: pulumi.Output.create<String>(map['linkId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

