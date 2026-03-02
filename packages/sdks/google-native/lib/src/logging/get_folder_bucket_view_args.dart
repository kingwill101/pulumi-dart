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
    required this.bucketId,
    required this.folderId,
    required this.location,
    required this.viewId,
  });

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
      bucketId: (map['bucketId'] as String).input(),
      folderId: (map['folderId'] as String).input(),
      location: (map['location'] as String).input(),
      viewId: (map['viewId'] as String).input(),
    );
  }
}

