// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_image_sharing.dart';
import 'image_replication.dart';
import 'image_timeouts.dart';

/// Input properties used for looking up and filtering Image resources.
class ImageState {
  /// The capabilities of this Image.
  final pulumi.Input<List<String>>? capabilities;
  /// Whether this image supports cloud-init.
  final pulumi.Input<bool>? cloudInit;
  /// When this Image was created.
  final pulumi.Input<String>? created;
  /// The name of the User who created this Image.
  final pulumi.Input<String>? createdBy;
  /// Whether or not this Image is deprecated. Will only be True for deprecated public Images.
  final pulumi.Input<bool>? deprecated;
  /// A detailed description of this Image.
  final pulumi.Input<String>? description;
  /// The ID of the Linode Disk that this Image will be created from.
  final pulumi.Input<int>? diskId;
  /// Only Images created automatically (from a deleted Linode; type=automatic) will expire.
  final pulumi.Input<String>? expiry;
  /// The MD5 hash of the file to be uploaded. This is used to trigger file updates.
  final pulumi.Input<String>? fileHash;
  /// The path of the image file to be uploaded.
  final pulumi.Input<String>? filePath;
  /// Details about image sharing, including who the image is shared with and by. (**Note: v4beta only and may not currently be available to all users.**)
  final pulumi.Input<ImageImageSharing>? imageSharing;
  /// True if the Image is public.
  final pulumi.Input<bool>? isPublic;
  /// True if the Image is shared. (**Note: v4beta only and may not currently be available to all users.**)
  final pulumi.Input<bool>? isShared;
  /// A short description of the Image. Labels cannot contain special characters.
  final pulumi.Input<String>? label;
  /// The ID of the Linode that this Image will be created from.
  ///
  /// - - -
  ///
  /// > **NOTICE:** Uploading images is currently in beta. Ensure `LINODE_API_VERSION` is set to `v4beta` in order to use this functionality.
  final pulumi.Input<int>? linodeId;
  /// The region of the image. See all regions [here](https://techdocs.akamai.com/linode-api/reference/get-regions).
  final pulumi.Input<String>? region;
  /// A list of regions that customer wants to replicate this image in. At least one valid region is required and only core regions allowed. Existing images in the regions not passed will be removed. See Replicate an Image [here](https://techdocs.akamai.com/linode-api/reference/post-replicate-image) for more details.
  final pulumi.Input<List<String>>? replicaRegions;
  /// A list of image replications region and corresponding status.
  final pulumi.Input<List<ImageReplication>>? replications;
  /// The minimum size this Image needs to deploy. Size is in MB.
  final pulumi.Input<int>? size;
  /// The status of an image replica.
  final pulumi.Input<String>? status;
  /// A list of customized tags.
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<ImageTimeouts>? timeouts;
  /// The total size of the image in all available regions.
  final pulumi.Input<int>? totalSize;
  /// How the Image was created. 'Manual' Images can be created at any time. 'Automatic' images are created automatically from a deleted Linode.
  final pulumi.Input<String>? type;
  /// The upstream distribution vendor. Nil for private Images.
  final pulumi.Input<String>? vendor;
  /// Whether to wait for all image replications become `available`. Default to false.
  ///
  /// - - -
  final pulumi.Input<bool>? waitForReplications;

  /// Creates a new [ImageState].
  /// [capabilities] The capabilities of this Image.
  /// [cloudInit] Whether this image supports cloud-init.
  /// [created] When this Image was created.
  /// [createdBy] The name of the User who created this Image.
  /// [deprecated] Whether or not this Image is deprecated. Will only be True for deprecated public Images.
  /// [description] A detailed description of this Image.
  /// [diskId] The ID of the Linode Disk that this Image will be created from.
  /// [expiry] Only Images created automatically (from a deleted Linode; type=automatic) will expire.
  /// [fileHash] The MD5 hash of the file to be uploaded. This is used to trigger file updates.
  /// [filePath] The path of the image file to be uploaded.
  /// [imageSharing] Details about image sharing, including who the image is shared with and by. (**Note: v4beta only and may not currently be available to all users.**)
  /// [isPublic] True if the Image is public.
  /// [isShared] True if the Image is shared. (**Note: v4beta only and may not currently be available to all users.**)
  /// [label] A short description of the Image. Labels cannot contain special characters.
  /// [linodeId] The ID of the Linode that this Image will be created from.
  /// [region] The region of the image. See all regions [here](https://techdocs.akamai.com/linode-api/reference/get-regions).
  /// [replicaRegions] A list of regions that customer wants to replicate this image in. At least one valid region is required and only core regions allowed. Existing images in the regions not passed will be removed. See Replicate an Image [here](https://techdocs.akamai.com/linode-api/reference/post-replicate-image) for more details.
  /// [replications] A list of image replications region and corresponding status.
  /// [size] The minimum size this Image needs to deploy. Size is in MB.
  /// [status] The status of an image replica.
  /// [tags] A list of customized tags.
  /// [timeouts] Optional.
  /// [totalSize] The total size of the image in all available regions.
  /// [type] How the Image was created. 'Manual' Images can be created at any time. 'Automatic' images are created automatically from a deleted Linode.
  /// [vendor] The upstream distribution vendor. Nil for private Images.
  /// [waitForReplications] Whether to wait for all image replications become `available`. Default to false.
  ImageState({
    this.capabilities,
    this.cloudInit,
    this.created,
    this.createdBy,
    this.deprecated,
    this.description,
    this.diskId,
    this.expiry,
    this.fileHash,
    this.filePath,
    this.imageSharing,
    this.isPublic,
    this.isShared,
    this.label,
    this.linodeId,
    this.region,
    this.replicaRegions,
    this.replications,
    this.size,
    this.status,
    this.tags,
    this.timeouts,
    this.totalSize,
    this.type,
    this.vendor,
    this.waitForReplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities,
      'cloudInit': ?cloudInit,
      'created': ?created,
      'createdBy': ?createdBy,
      'deprecated': ?deprecated,
      'description': ?description,
      'diskId': ?diskId,
      'expiry': ?expiry,
      'fileHash': ?fileHash,
      'filePath': ?filePath,
      'imageSharing': ?pulumi.Input.mapOptionalInputValue<ImageImageSharing, Map<String, dynamic>>(imageSharing, (value) => value.toMap()),
      'isPublic': ?isPublic,
      'isShared': ?isShared,
      'label': ?label,
      'linodeId': ?linodeId,
      'region': ?region,
      'replicaRegions': ?replicaRegions,
      'replications': ?pulumi.Input.mapOptionalInputValue<List<ImageReplication>, List<Map<String, dynamic>>>(replications, (value) => pulumi.Input.encodeList<ImageReplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'size': ?size,
      'status': ?status,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ImageTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'totalSize': ?totalSize,
      'type': ?type,
      'vendor': ?vendor,
      'waitForReplications': ?waitForReplications,
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      capabilities: map['capabilities'] == null ? null : ((map['capabilities']! as List).cast<String>()).input(),
      cloudInit: map['cloudInit'] == null ? null : (map['cloudInit']! as bool).input(),
      created: map['created'] == null ? null : (map['created']! as String).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy']! as String).input(),
      deprecated: map['deprecated'] == null ? null : (map['deprecated']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diskId: map['diskId'] == null ? null : (map['diskId']! as int).input(),
      expiry: map['expiry'] == null ? null : (map['expiry']! as String).input(),
      fileHash: map['fileHash'] == null ? null : (map['fileHash']! as String).input(),
      filePath: map['filePath'] == null ? null : (map['filePath']! as String).input(),
      imageSharing: map['imageSharing'] == null ? null : (ImageImageSharing.fromMap((map['imageSharing']! as Map).cast<String, dynamic>())).input(),
      isPublic: map['isPublic'] == null ? null : (map['isPublic']! as bool).input(),
      isShared: map['isShared'] == null ? null : (map['isShared']! as bool).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      linodeId: map['linodeId'] == null ? null : (map['linodeId']! as int).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      replicaRegions: map['replicaRegions'] == null ? null : ((map['replicaRegions']! as List).cast<String>()).input(),
      replications: map['replications'] == null ? null : (pulumi.Input.decodeList<ImageReplication>(map['replications']!, (value) => ImageReplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      timeouts: map['timeouts'] == null ? null : (ImageTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input(),
      totalSize: map['totalSize'] == null ? null : (map['totalSize']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      vendor: map['vendor'] == null ? null : (map['vendor']! as String).input(),
      waitForReplications: map['waitForReplications'] == null ? null : (map['waitForReplications']! as bool).input(),
    );
  }
}

