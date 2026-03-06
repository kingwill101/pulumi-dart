// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image_image_sharing.dart';
import 'get_images_image_replication.dart';

class GetImagesImage {
  /// The capabilities of this Image.
  final pulumi.Input<List<String>> capabilities;
  /// When this Image was created.
  final pulumi.Input<String> created;
  /// The name of the User who created this Image, or "linode" for official Images.
  final pulumi.Input<String> createdBy;
  /// Whether or not this Image is deprecated. Will only be true for deprecated public Images.
  final pulumi.Input<bool> deprecated;
  /// A detailed description of this Image.
  final pulumi.Input<String> description;
  /// Only Images created automatically (from a deleted Linode; type=automatic) will expire.
  final pulumi.Input<String> expiry;
  /// The unique ID of this Image.  The ID of private images begin with `private/` followed by the numeric identifier of the private image, for example `private/12345`.
  final pulumi.Input<String> id;
  /// Details about image sharing, including who the image is shared with and by. (**Note: v4beta only and may not currently be available to all users.**)
  final pulumi.Input<GetImagesImageImageSharing> imageSharing;
  /// True if the Image is public.
  final pulumi.Input<bool> isPublic;
  /// True if the Image is shared. (**Note: v4beta only and may not currently be available to all users.**)
  final pulumi.Input<bool> isShared;
  /// A short description of the Image.
  final pulumi.Input<String> label;
  /// A list of image replication regions and corresponding status.
  final pulumi.Input<List<GetImagesImageReplication>> replications;
  /// The minimum size this Image needs to deploy. Size is in MB. example: 2500
  final pulumi.Input<int> size;
  /// The status of an image replica.
  final pulumi.Input<String> status;
  /// A list of customized tags.
  final pulumi.Input<List<String>> tags;
  /// The total size of the image in all available regions.
  final pulumi.Input<int> totalSize;
  /// How the Image was created. Manual Images can be created at any time. "Automatic" Images are created automatically from a deleted Linode. (`manual`, `automatic`)
  final pulumi.Input<String> type;
  /// The upstream distribution vendor. `None` for private Images.
  final pulumi.Input<String> vendor;

  /// Creates a new [GetImagesImage].
  /// [capabilities] The capabilities of this Image.
  /// [created] When this Image was created.
  /// [createdBy] The name of the User who created this Image, or "linode" for official Images.
  /// [deprecated] Whether or not this Image is deprecated. Will only be true for deprecated public Images.
  /// [description] A detailed description of this Image.
  /// [expiry] Only Images created automatically (from a deleted Linode; type=automatic) will expire.
  /// [id] The unique ID of this Image.  The ID of private images begin with `private/` followed by the numeric identifier of the private image, for example `private/12345`.
  /// [imageSharing] Details about image sharing, including who the image is shared with and by. (**Note: v4beta only and may not currently be available to all users.**)
  /// [isPublic] True if the Image is public.
  /// [isShared] True if the Image is shared. (**Note: v4beta only and may not currently be available to all users.**)
  /// [label] A short description of the Image.
  /// [replications] A list of image replication regions and corresponding status.
  /// [size] The minimum size this Image needs to deploy. Size is in MB. example: 2500
  /// [status] The status of an image replica.
  /// [tags] A list of customized tags.
  /// [totalSize] The total size of the image in all available regions.
  /// [type] How the Image was created. Manual Images can be created at any time. "Automatic" Images are created automatically from a deleted Linode. (`manual`, `automatic`)
  /// [vendor] The upstream distribution vendor. `None` for private Images.
  const GetImagesImage({
    required this.capabilities,
    required this.created,
    required this.createdBy,
    required this.deprecated,
    required this.description,
    required this.expiry,
    required this.id,
    required this.imageSharing,
    required this.isPublic,
    required this.isShared,
    required this.label,
    required this.replications,
    required this.size,
    required this.status,
    required this.tags,
    required this.totalSize,
    required this.type,
    required this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'created': created,
      'createdBy': createdBy,
      'deprecated': deprecated,
      'description': description,
      'expiry': expiry,
      'id': id,
      'imageSharing': pulumi.Input.mapInputValue<GetImagesImageImageSharing, Map<String, dynamic>>(imageSharing, (value) => value.toMap()),
      'isPublic': isPublic,
      'isShared': isShared,
      'label': label,
      'replications': pulumi.Input.mapInputValue<List<GetImagesImageReplication>, List<Map<String, dynamic>>>(replications, (value) => pulumi.Input.encodeList<GetImagesImageReplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'size': size,
      'status': status,
      'tags': tags,
      'totalSize': totalSize,
      'type': type,
      'vendor': vendor,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      capabilities: pulumi.Input.fromValue((map['capabilities'] as List).cast<String>()),
      created: pulumi.Input.fromValue(map['created'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      deprecated: pulumi.Input.fromValue(map['deprecated'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      expiry: pulumi.Input.fromValue(map['expiry'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageSharing: pulumi.Input.fromValue(GetImagesImageImageSharing.fromMap((map['imageSharing']! as Map).cast<String, dynamic>())),
      isPublic: pulumi.Input.fromValue(map['isPublic'] as bool),
      isShared: pulumi.Input.fromValue(map['isShared'] as bool),
      label: pulumi.Input.fromValue(map['label'] as String),
      replications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetImagesImageReplication>(map['replications']!, (value) => GetImagesImageReplication.fromMap((value as Map).cast<String, dynamic>()))),
      size: pulumi.Input.fromValue(map['size'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      totalSize: pulumi.Input.fromValue(map['totalSize'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      vendor: pulumi.Input.fromValue(map['vendor'] as String),
    );
  }
}

