// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_bucket_view_args_doc}
/// The set of arguments for BucketView.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_bucket_view_args_doc}
class BucketViewArgs {
  final pulumi.Input<String> bucketId;
  /// Describes this view.
  final pulumi.Input<String>? description;
  /// Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  final pulumi.Input<String>? filter;
  final pulumi.Input<String>? location;
  /// The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  final pulumi.Input<String> viewId;

  /// Creates a new [BucketViewArgs].
  /// [bucketId] Required.
  /// [description] Describes this view.
  /// [filter] Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  /// [location] Optional.
  /// [name] The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  /// [project] Optional.
  /// [viewId] Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  BucketViewArgs({
    required pulumi.Output<String> bucketId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> viewId,
  }) :
      bucketId = pulumi.Input.asInput<String>(bucketId),
      description = pulumi.Input.asOptionalInput<String>(description),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      viewId = pulumi.Input.asInput<String>(viewId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'description': ?description,
      'filter': ?filter,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'viewId': viewId,
    };
  }

  factory BucketViewArgs.fromMap(Map<String, dynamic> map) {
    return BucketViewArgs(
      bucketId: pulumi.Output.create<String>(map['bucketId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      viewId: pulumi.Output.create<String>(map['viewId'] as String),
    );
  }
}

