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
  /// &gt; **NOTICE:** Uploading images is currently in beta. Ensure `LINODE_API_VERSION` is set to `v4beta` in order to use this functionality.
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
      'imageSharing':
          ?pulumi.Input.mapOptionalInputValue<
            ImageImageSharing,
            Map<String, dynamic>
          >(imageSharing, (value) => value.toMap()),
      'isPublic': ?isPublic,
      'isShared': ?isShared,
      'label': ?label,
      'linodeId': ?linodeId,
      'region': ?region,
      'replicaRegions': ?replicaRegions,
      'replications':
          ?pulumi.Input.mapOptionalInputValue<
            List<ImageReplication>,
            List<Map<String, dynamic>>
          >(
            replications,
            (value) =>
                pulumi.Input.encodeList<ImageReplication, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'size': ?size,
      'status': ?status,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ImageTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'totalSize': ?totalSize,
      'type': ?type,
      'vendor': ?vendor,
      'waitForReplications': ?waitForReplications,
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      capabilities: (() {
        final guardedValue = map['capabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      cloudInit: (() {
        final guardedValue = map['cloudInit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      created: (() {
        final guardedValue = map['created'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdBy: (() {
        final guardedValue = map['createdBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deprecated: (() {
        final guardedValue = map['deprecated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskId: (() {
        final guardedValue = map['diskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      expiry: (() {
        final guardedValue = map['expiry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileHash: (() {
        final guardedValue = map['fileHash'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filePath: (() {
        final guardedValue = map['filePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageSharing: (() {
        final guardedValue = map['imageSharing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ImageImageSharing.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      isPublic: (() {
        final guardedValue = map['isPublic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isShared: (() {
        final guardedValue = map['isShared'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linodeId: (() {
        final guardedValue = map['linodeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicaRegions: (() {
        final guardedValue = map['replicaRegions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      replications: (() {
        final guardedValue = map['replications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ImageReplication>(
            guardedValue,
            (value) => ImageReplication.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ImageTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      totalSize: (() {
        final guardedValue = map['totalSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vendor: (() {
        final guardedValue = map['vendor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      waitForReplications: (() {
        final guardedValue = map['waitForReplications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
