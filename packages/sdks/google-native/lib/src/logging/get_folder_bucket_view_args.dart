// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_folder_bucket_view_args_doc}
/// Arguments for getFolderBucketView.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_folder_bucket_view_args_doc}
class GetFolderBucketViewArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> viewId;

  /// Creates a new [GetFolderBucketViewArgs].
  /// [bucketId] Required.
  /// [folderId] Required.
  /// [location] Required.
  /// [viewId] Required.
  GetFolderBucketViewArgs({
    required pulumi.Output<String> bucketId,
    required pulumi.Output<String> folderId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> viewId,
  }) :
      bucketId = pulumi.Input.asInput<String>(bucketId),
      folderId = pulumi.Input.asInput<String>(folderId),
      location = pulumi.Input.asInput<String>(location),
      viewId = pulumi.Input.asInput<String>(viewId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'folderId': folderId,
      'location': location,
      'viewId': viewId,
    };
  }

  factory GetFolderBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderBucketViewArgs(
      bucketId: pulumi.Output.create<String>(map['bucketId'] as String),
      folderId: pulumi.Output.create<String>(map['folderId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      viewId: pulumi.Output.create<String>(map['viewId'] as String),
    );
  }
}

