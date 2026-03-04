// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_timeouts.dart';

/// {@template pulumi_index_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_index_image_image_args_doc}
class ImageArgs {
  /// Whether this image supports cloud-init.
  final pulumi.Input<bool>? cloudInit;

  /// A detailed description of this Image.
  final pulumi.Input<String>? description;

  /// The ID of the Linode Disk that this Image will be created from.
  final pulumi.Input<int>? diskId;

  /// The MD5 hash of the file to be uploaded. This is used to trigger file updates.
  final pulumi.Input<String>? fileHash;

  /// The path of the image file to be uploaded.
  final pulumi.Input<String>? filePath;

  /// A short description of the Image. Labels cannot contain special characters.
  final pulumi.Input<String> label;

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

  /// A list of customized tags.
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<ImageTimeouts>? timeouts;

  /// Whether to wait for all image replications become `available`. Default to false.
  ///
  /// - - -
  final pulumi.Input<bool>? waitForReplications;

  /// Creates a new [ImageArgs].
  /// [cloudInit] Whether this image supports cloud-init.
  /// [description] A detailed description of this Image.
  /// [diskId] The ID of the Linode Disk that this Image will be created from.
  /// [fileHash] The MD5 hash of the file to be uploaded. This is used to trigger file updates.
  /// [filePath] The path of the image file to be uploaded.
  /// [label] A short description of the Image. Labels cannot contain special characters.
  /// [linodeId] The ID of the Linode that this Image will be created from.
  /// [region] The region of the image. See all regions [here](https://techdocs.akamai.com/linode-api/reference/get-regions).
  /// [replicaRegions] A list of regions that customer wants to replicate this image in. At least one valid region is required and only core regions allowed. Existing images in the regions not passed will be removed. See Replicate an Image [here](https://techdocs.akamai.com/linode-api/reference/post-replicate-image) for more details.
  /// [tags] A list of customized tags.
  /// [timeouts] Optional.
  /// [waitForReplications] Whether to wait for all image replications become `available`. Default to false.
  ImageArgs({
    this.cloudInit,
    this.description,
    this.diskId,
    this.fileHash,
    this.filePath,
    required this.label,
    this.linodeId,
    this.region,
    this.replicaRegions,
    this.tags,
    this.timeouts,
    this.waitForReplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudInit': ?cloudInit,
      'description': ?description,
      'diskId': ?diskId,
      'fileHash': ?fileHash,
      'filePath': ?filePath,
      'label': label,
      'linodeId': ?linodeId,
      'region': ?region,
      'replicaRegions': ?replicaRegions,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ImageTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'waitForReplications': ?waitForReplications,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      cloudInit: (() {
        final guardedValue = map['cloudInit'];
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
      label: pulumi.Input.fromValue(map['label'] as String),
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
      waitForReplications: (() {
        final guardedValue = map['waitForReplications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
