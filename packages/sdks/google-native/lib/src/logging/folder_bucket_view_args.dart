// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_folder_bucket_view_args_doc}
/// The set of arguments for FolderBucketView.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_folder_bucket_view_args_doc}
class FolderBucketViewArgs {
  final pulumi.Input<String> bucketId;
  /// Describes this view.
  final pulumi.Input<String>? description;
  /// Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  final pulumi.Input<String>? filter;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String>? location;
  /// The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  final pulumi.Input<String>? name;
  /// Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  final pulumi.Input<String> viewId;

  /// Creates a new [FolderBucketViewArgs].
  /// [bucketId] Required.
  /// [description] Describes this view.
  /// [filter] Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  /// [folderId] Required.
  /// [location] Optional.
  /// [name] The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  /// [viewId] Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  FolderBucketViewArgs({
    required this.bucketId,
    this.description,
    this.filter,
    required this.folderId,
    this.location,
    this.name,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'description': ?description,
      'filter': ?filter,
      'folderId': folderId,
      'location': ?location,
      'name': ?name,
      'viewId': viewId,
    };
  }

  factory FolderBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return FolderBucketViewArgs(
      bucketId: (map['bucketId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      folderId: (map['folderId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      viewId: (map['viewId'] as String).input(),
    );
  }
}

