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
    required pulumi.Output<String> bucketId,
    required pulumi.Output<String> folderId,
    required pulumi.Output<String> linkId,
    required pulumi.Output<String> location,
  }) :
      bucketId = pulumi.Input.asInput<String>(bucketId),
      folderId = pulumi.Input.asInput<String>(folderId),
      linkId = pulumi.Input.asInput<String>(linkId),
      location = pulumi.Input.asInput<String>(location);

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
      bucketId: pulumi.Output.create<String>(map['bucketId'] as String),
      folderId: pulumi.Output.create<String>(map['folderId'] as String),
      linkId: pulumi.Output.create<String>(map['linkId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
    );
  }
}

