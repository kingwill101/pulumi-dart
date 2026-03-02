// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_folder_bucket_link_args_doc}
/// Arguments for getFolderBucketLink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_folder_bucket_link_args_doc}
class GetFolderBucketLinkArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> linkId;
  final pulumi.Input<String> location;

  /// Creates a new [GetFolderBucketLinkArgs].
  /// [bucketId] Required.
  /// [folderId] Required.
  /// [linkId] Required.
  /// [location] Required.
  GetFolderBucketLinkArgs({
    required this.bucketId,
    required this.folderId,
    required this.linkId,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'folderId': folderId,
      'linkId': linkId,
      'location': location,
    };
  }

  factory GetFolderBucketLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderBucketLinkArgs(
      bucketId: (map['bucketId'] as String).input(),
      folderId: (map['folderId'] as String).input(),
      linkId: (map['linkId'] as String).input(),
      location: (map['location'] as String).input(),
    );
  }
}

