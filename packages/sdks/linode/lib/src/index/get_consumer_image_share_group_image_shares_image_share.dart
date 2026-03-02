// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consumer_image_share_group_image_shares_image_share_image_sharing.dart';

class GetConsumerImageShareGroupImageSharesImageShare {
  /// The capabilities of the Image represented by the Image Share.
  final pulumi.Input<List<String>> capabilities;
  /// When this Image Share was created.
  final pulumi.Input<String> created;
  /// Whether this Image is deprecated.
  final pulumi.Input<bool> deprecated;
  /// A description of the Image Share.
  final pulumi.Input<String> description;
  /// The unique ID assigned to this Image Share.
  final pulumi.Input<String> id;
  /// Details about image sharing, including who the image is shared with and by.
  final pulumi.Input<GetConsumerImageShareGroupImageSharesImageShareImageSharing> imageSharing;
  /// True if the Image is public.
  final pulumi.Input<bool> isPublic;
  /// The label of the Image Share.
  final pulumi.Input<String> label;
  /// The minimum size this Image needs to deploy. Size is in MB. example: 2500
  final pulumi.Input<int> size;
  /// The current status of this image. (`creating`, `pending_upload`, `available`)
  final pulumi.Input<String> status;
  /// A list of customized tags.
  final pulumi.Input<List<String>> tags;
  /// The total size of the image in all available regions.
  final pulumi.Input<int> totalSize;
  /// How the Image was created. Manual Images can be created at any time. "Automatic" Images are created automatically from a deleted Linode. (`manual`, `automatic`)
  final pulumi.Input<String> type;

  /// Creates a new [GetConsumerImageShareGroupImageSharesImageShare].
  /// [capabilities] The capabilities of the Image represented by the Image Share.
  /// [created] When this Image Share was created.
  /// [deprecated] Whether this Image is deprecated.
  /// [description] A description of the Image Share.
  /// [id] The unique ID assigned to this Image Share.
  /// [imageSharing] Details about image sharing, including who the image is shared with and by.
  /// [isPublic] True if the Image is public.
  /// [label] The label of the Image Share.
  /// [size] The minimum size this Image needs to deploy. Size is in MB. example: 2500
  /// [status] The current status of this image. (`creating`, `pending_upload`, `available`)
  /// [tags] A list of customized tags.
  /// [totalSize] The total size of the image in all available regions.
  /// [type] How the Image was created. Manual Images can be created at any time. "Automatic" Images are created automatically from a deleted Linode. (`manual`, `automatic`)
  GetConsumerImageShareGroupImageSharesImageShare({
    required this.capabilities,
    required this.created,
    required this.deprecated,
    required this.description,
    required this.id,
    required this.imageSharing,
    required this.isPublic,
    required this.label,
    required this.size,
    required this.status,
    required this.tags,
    required this.totalSize,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'created': created,
      'deprecated': deprecated,
      'description': description,
      'id': id,
      'imageSharing': pulumi.Input.mapInputValue<GetConsumerImageShareGroupImageSharesImageShareImageSharing, Map<String, dynamic>>(imageSharing, (value) => value.toMap()),
      'isPublic': isPublic,
      'label': label,
      'size': size,
      'status': status,
      'tags': tags,
      'totalSize': totalSize,
      'type': type,
    };
  }

  factory GetConsumerImageShareGroupImageSharesImageShare.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupImageSharesImageShare(
      capabilities: ((map['capabilities'] as List).cast<String>()).input(),
      created: (map['created'] as String).input(),
      deprecated: (map['deprecated'] as bool).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      imageSharing: (GetConsumerImageShareGroupImageSharesImageShareImageSharing.fromMap((map['imageSharing'] as Map).cast<String, dynamic>())).input(),
      isPublic: (map['isPublic'] as bool).input(),
      label: (map['label'] as String).input(),
      size: (map['size'] as int).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      totalSize: (map['totalSize'] as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

