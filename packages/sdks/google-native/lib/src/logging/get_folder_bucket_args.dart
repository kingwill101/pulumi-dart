// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_folder_bucket_args_doc}
/// Arguments for getFolderBucket.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_folder_bucket_args_doc}
class GetFolderBucketArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> location;

  /// Creates a new [GetFolderBucketArgs].
  /// [bucketId] Required.
  /// [folderId] Required.
  /// [location] Required.
  GetFolderBucketArgs({
    required this.bucketId,
    required this.folderId,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'folderId': folderId,
      'location': location,
    };
  }

  factory GetFolderBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderBucketArgs(
      bucketId: pulumi.Input.fromValue(map['bucketId'] as String),
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}

