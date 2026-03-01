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
    pulumi.Output<List<String>>? capabilities,
    pulumi.Output<bool>? cloudInit,
    pulumi.Output<String>? created,
    pulumi.Output<String>? createdBy,
    pulumi.Output<bool>? deprecated,
    pulumi.Output<String>? description,
    pulumi.Output<int>? diskId,
    pulumi.Output<String>? expiry,
    pulumi.Output<String>? fileHash,
    pulumi.Output<String>? filePath,
    pulumi.Output<ImageImageSharing>? imageSharing,
    pulumi.Output<bool>? isPublic,
    pulumi.Output<bool>? isShared,
    pulumi.Output<String>? label,
    pulumi.Output<int>? linodeId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? replicaRegions,
    pulumi.Output<List<ImageReplication>>? replications,
    pulumi.Output<int>? size,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<ImageTimeouts>? timeouts,
    pulumi.Output<int>? totalSize,
    pulumi.Output<String>? type,
    pulumi.Output<String>? vendor,
    pulumi.Output<bool>? waitForReplications,
  }) :
      capabilities = pulumi.Input.asOptionalInput<List<String>>(capabilities),
      cloudInit = pulumi.Input.asOptionalInput<bool>(cloudInit),
      created = pulumi.Input.asOptionalInput<String>(created),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      deprecated = pulumi.Input.asOptionalInput<bool>(deprecated),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskId = pulumi.Input.asOptionalInput<int>(diskId),
      expiry = pulumi.Input.asOptionalInput<String>(expiry),
      fileHash = pulumi.Input.asOptionalInput<String>(fileHash),
      filePath = pulumi.Input.asOptionalInput<String>(filePath),
      imageSharing = pulumi.Input.asOptionalInput<ImageImageSharing>(imageSharing),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      isShared = pulumi.Input.asOptionalInput<bool>(isShared),
      label = pulumi.Input.asOptionalInput<String>(label),
      linodeId = pulumi.Input.asOptionalInput<int>(linodeId),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicaRegions = pulumi.Input.asOptionalInput<List<String>>(replicaRegions),
      replications = pulumi.Input.asOptionalInput<List<ImageReplication>>(replications),
      size = pulumi.Input.asOptionalInput<int>(size),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<ImageTimeouts>(timeouts),
      totalSize = pulumi.Input.asOptionalInput<int>(totalSize),
      type = pulumi.Input.asOptionalInput<String>(type),
      vendor = pulumi.Input.asOptionalInput<String>(vendor),
      waitForReplications = pulumi.Input.asOptionalInput<bool>(waitForReplications);

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
      capabilities: map['capabilities'] == null ? null : pulumi.Output.create<List<String>>((map['capabilities'] as List).cast<String>()),
      cloudInit: map['cloudInit'] == null ? null : pulumi.Output.create<bool>(map['cloudInit'] as bool),
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      deprecated: map['deprecated'] == null ? null : pulumi.Output.create<bool>(map['deprecated'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskId: map['diskId'] == null ? null : pulumi.Output.create<int>(map['diskId'] as int),
      expiry: map['expiry'] == null ? null : pulumi.Output.create<String>(map['expiry'] as String),
      fileHash: map['fileHash'] == null ? null : pulumi.Output.create<String>(map['fileHash'] as String),
      filePath: map['filePath'] == null ? null : pulumi.Output.create<String>(map['filePath'] as String),
      imageSharing: map['imageSharing'] == null ? null : pulumi.Output.create<ImageImageSharing>(ImageImageSharing.fromMap((map['imageSharing'] as Map).cast<String, dynamic>())),
      isPublic: map['isPublic'] == null ? null : pulumi.Output.create<bool>(map['isPublic'] as bool),
      isShared: map['isShared'] == null ? null : pulumi.Output.create<bool>(map['isShared'] as bool),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      linodeId: map['linodeId'] == null ? null : pulumi.Output.create<int>(map['linodeId'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicaRegions: map['replicaRegions'] == null ? null : pulumi.Output.create<List<String>>((map['replicaRegions'] as List).cast<String>()),
      replications: map['replications'] == null ? null : pulumi.Output.create<List<ImageReplication>>(pulumi.Input.decodeList<ImageReplication>(map['replications'], (value) => ImageReplication.fromMap((value as Map).cast<String, dynamic>()))),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ImageTimeouts>(ImageTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      totalSize: map['totalSize'] == null ? null : pulumi.Output.create<int>(map['totalSize'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vendor: map['vendor'] == null ? null : pulumi.Output.create<String>(map['vendor'] as String),
      waitForReplications: map['waitForReplications'] == null ? null : pulumi.Output.create<bool>(map['waitForReplications'] as bool),
    );
  }
}

