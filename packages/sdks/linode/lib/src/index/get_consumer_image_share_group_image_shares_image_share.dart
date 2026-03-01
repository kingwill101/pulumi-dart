// ignore_for_file: unused_element, unnecessary_cast

import 'get_consumer_image_share_group_image_shares_image_share_image_sharing.dart';

class GetConsumerImageShareGroupImageSharesImageShare {
  /// The capabilities of the Image represented by the Image Share.
  final List<String> capabilities;
  /// When this Image Share was created.
  final String created;
  /// Whether this Image is deprecated.
  final bool deprecated;
  /// A description of the Image Share.
  final String description;
  /// The unique ID assigned to this Image Share.
  final String id;
  /// Details about image sharing, including who the image is shared with and by.
  final GetConsumerImageShareGroupImageSharesImageShareImageSharing imageSharing;
  /// True if the Image is public.
  final bool isPublic;
  /// The label of the Image Share.
  final String label;
  /// The minimum size this Image needs to deploy. Size is in MB. example: 2500
  final int size;
  /// The current status of this image. (`creating`, `pending_upload`, `available`)
  final String status;
  /// A list of customized tags.
  final List<String> tags;
  /// The total size of the image in all available regions.
  final int totalSize;
  /// How the Image was created. Manual Images can be created at any time. "Automatic" Images are created automatically from a deleted Linode. (`manual`, `automatic`)
  final String type;

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
      'imageSharing': imageSharing.toMap(),
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
      capabilities: (map['capabilities'] as List).cast<String>(),
      created: map['created'] as String,
      deprecated: map['deprecated'] as bool,
      description: map['description'] as String,
      id: map['id'] as String,
      imageSharing: GetConsumerImageShareGroupImageSharesImageShareImageSharing.fromMap((map['imageSharing'] as Map).cast<String, dynamic>()),
      isPublic: map['isPublic'] as bool,
      label: map['label'] as String,
      size: map['size'] as int,
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
      totalSize: map['totalSize'] as int,
      type: map['type'] as String,
    );
  }
}

