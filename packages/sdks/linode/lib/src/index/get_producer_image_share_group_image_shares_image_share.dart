// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_producer_image_share_group_image_shares_image_share_image_sharing.dart';

class GetProducerImageShareGroupImageSharesImageShare {
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
  final pulumi.Input<GetProducerImageShareGroupImageSharesImageShareImageSharing> imageSharing;
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

  /// Creates a new [GetProducerImageShareGroupImageSharesImageShare].
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
  GetProducerImageShareGroupImageSharesImageShare({
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
      'imageSharing': pulumi.Input.mapInputValue<GetProducerImageShareGroupImageSharesImageShareImageSharing, Map<String, dynamic>>(imageSharing, (value) => value.toMap()),
      'isPublic': isPublic,
      'label': label,
      'size': size,
      'status': status,
      'tags': tags,
      'totalSize': totalSize,
      'type': type,
    };
  }

  factory GetProducerImageShareGroupImageSharesImageShare.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupImageSharesImageShare(
      capabilities: pulumi.Input.fromValue((map['capabilities'] as List).cast<String>()),
      created: pulumi.Input.fromValue(map['created'] as String),
      deprecated: pulumi.Input.fromValue(map['deprecated'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageSharing: pulumi.Input.fromValue(GetProducerImageShareGroupImageSharesImageShareImageSharing.fromMap((map['imageSharing']! as Map).cast<String, dynamic>())),
      isPublic: pulumi.Input.fromValue(map['isPublic'] as bool),
      label: pulumi.Input.fromValue(map['label'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      totalSize: pulumi.Input.fromValue(map['totalSize'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

