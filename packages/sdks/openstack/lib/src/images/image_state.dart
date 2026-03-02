// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Image resources.
class ImageState {
  /// The checksum of the data associated with the image.
  final pulumi.Input<String>? checksum;
  /// The container format. Must be one of "bare",
  /// "ovf", "aki", "ari", "ami", "ova", "docker", "compressed".
  final pulumi.Input<String>? containerFormat;
  /// The date the image was created.
  final pulumi.Input<String>? createdAt;
  /// If true, this provider will decompress downloaded
  /// image before uploading it to OpenStack. Decompression algorithm is chosen by
  /// checking "Content-Type" or `Content-Disposition` header to detect the
  /// filename extension. Supported algorithms are: gzip, bzip2, xz and zst.
  /// Defaults to false. Changing this creates a new Image.
  final pulumi.Input<bool>? decompress;
  /// The disk format. Must be one of "raw", "vhd",
  /// "vhdx", "vmdk", "vdi", "iso", "ploop", "qcow2", "aki", "ari", "ami"
  final pulumi.Input<String>? diskFormat;
  /// the trailing path after the glance
  /// endpoint that represent the location of the image
  /// or the path to retrieve it.
  final pulumi.Input<String>? file;
  /// If true, image will be hidden from public list.
  /// Defaults to false.
  final pulumi.Input<bool>? hidden;
  final pulumi.Input<String>? imageCachePath;
  /// Unique ID (valid UUID) of image to create. Changing
  /// this creates a new image.
  final pulumi.Input<String>? imageId;
  /// The password of basic auth to download
  /// `image_source_url`.
  final pulumi.Input<String>? imageSourcePassword;
  /// This is the url of the raw image. If
  /// `web_download` is not used, then the image will be downloaded in the
  /// `image_cache_path` before being uploaded to Glance. Conflicts with
  /// `local_file_path`.
  final pulumi.Input<String>? imageSourceUrl;
  /// The username of basic auth to download
  /// `image_source_url`.
  final pulumi.Input<String>? imageSourceUsername;
  /// This is the filepath of the raw image file
  /// that will be uploaded to Glance. Conflicts with `image_source_url` and
  /// `web_download`.
  final pulumi.Input<String>? localFilePath;
  /// The metadata associated with the image.
  /// Image metadata allow for meaningfully define the image properties
  /// and tags. See https://docs.openstack.org/glance/latest/user/metadefs-concepts.html.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Amount of disk space (in GB) required to boot
  /// image. Defaults to 0.
  final pulumi.Input<int>? minDiskGb;
  /// Amount of ram (in MB) required to boot image.
  /// Defauts to 0.
  final pulumi.Input<int>? minRamMb;
  /// The name of the image.
  final pulumi.Input<String>? name;
  /// The id of the openstack user who owns the image.
  final pulumi.Input<String>? owner;
  /// A map of key/value pairs to set freeform
  /// information about an image. See the "Notes" section for further information
  /// about properties.
  final pulumi.Input<Map<String, String>>? properties;
  /// If true, image will not be deletable. Defaults to
  /// false.
  final pulumi.Input<bool>? protected;
  /// The region in which to obtain the V2 Glance client. A
  /// Glance client is needed to create an Image that can be used with a compute
  /// instance. If omitted, the `region` argument of the provider is used. Changing
  /// this creates a new Image.
  final pulumi.Input<String>? region;
  /// The path to the JSON-schema that represent
  /// the image or image
  final pulumi.Input<String>? schema;
  /// The size in bytes of the data associated with the image.
  final pulumi.Input<int>? sizeBytes;
  /// The status of the image. It can be "queued", "active"
  /// or "saving".
  final pulumi.Input<String>? status;
  /// The tags of the image. It must be a list of strings. At
  /// this time, it is not possible to delete all tags of an image.
  final pulumi.Input<List<String>>? tags;
  /// The date the image was last updated.
  final pulumi.Input<String>? updatedAt;
  /// If false, the checksum will not be verified
  /// once the image is finished uploading. Conflicts with `web_download`. Defaults
  /// to true when not using `web_download`.
  final pulumi.Input<bool>? verifyChecksum;
  /// The visibility of the image. Must be one of
  /// "public", "private", "community", or "shared". The ability to set the
  /// visibility depends upon the configuration of the OpenStack cloud.
  final pulumi.Input<String>? visibility;
  /// If true, the "web-download" import method will be
  /// used to let Openstack download the image directly from the remote source.
  /// Conflicts with `local_file_path`. Defaults to false.
  final pulumi.Input<bool>? webDownload;

  /// Creates a new [ImageState].
  /// [checksum] The checksum of the data associated with the image.
  /// [containerFormat] The container format. Must be one of "bare",
  /// [createdAt] The date the image was created.
  /// [decompress] If true, this provider will decompress downloaded
  /// [diskFormat] The disk format. Must be one of "raw", "vhd",
  /// [file] the trailing path after the glance
  /// [hidden] If true, image will be hidden from public list.
  /// [imageCachePath] Optional.
  /// [imageId] Unique ID (valid UUID) of image to create. Changing
  /// [imageSourcePassword] The password of basic auth to download
  /// [imageSourceUrl] This is the url of the raw image. If
  /// [imageSourceUsername] The username of basic auth to download
  /// [localFilePath] This is the filepath of the raw image file
  /// [metadata] The metadata associated with the image.
  /// [minDiskGb] Amount of disk space (in GB) required to boot
  /// [minRamMb] Amount of ram (in MB) required to boot image.
  /// [name] The name of the image.
  /// [owner] The id of the openstack user who owns the image.
  /// [properties] A map of key/value pairs to set freeform
  /// [protected] If true, image will not be deletable. Defaults to
  /// [region] The region in which to obtain the V2 Glance client. A
  /// [schema] The path to the JSON-schema that represent
  /// [sizeBytes] The size in bytes of the data associated with the image.
  /// [status] The status of the image. It can be "queued", "active"
  /// [tags] The tags of the image. It must be a list of strings. At
  /// [updatedAt] The date the image was last updated.
  /// [verifyChecksum] If false, the checksum will not be verified
  /// [visibility] The visibility of the image. Must be one of
  /// [webDownload] If true, the "web-download" import method will be
  ImageState({
    this.checksum,
    this.containerFormat,
    this.createdAt,
    this.decompress,
    this.diskFormat,
    this.file,
    this.hidden,
    this.imageCachePath,
    this.imageId,
    this.imageSourcePassword,
    this.imageSourceUrl,
    this.imageSourceUsername,
    this.localFilePath,
    this.metadata,
    this.minDiskGb,
    this.minRamMb,
    this.name,
    this.owner,
    this.properties,
    this.protected,
    this.region,
    this.schema,
    this.sizeBytes,
    this.status,
    this.tags,
    this.updatedAt,
    this.verifyChecksum,
    this.visibility,
    this.webDownload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': ?checksum,
      'containerFormat': ?containerFormat,
      'createdAt': ?createdAt,
      'decompress': ?decompress,
      'diskFormat': ?diskFormat,
      'file': ?file,
      'hidden': ?hidden,
      'imageCachePath': ?imageCachePath,
      'imageId': ?imageId,
      'imageSourcePassword': ?imageSourcePassword,
      'imageSourceUrl': ?imageSourceUrl,
      'imageSourceUsername': ?imageSourceUsername,
      'localFilePath': ?localFilePath,
      'metadata': ?metadata,
      'minDiskGb': ?minDiskGb,
      'minRamMb': ?minRamMb,
      'name': ?name,
      'owner': ?owner,
      'properties': ?properties,
      'protected': ?protected,
      'region': ?region,
      'schema': ?schema,
      'sizeBytes': ?sizeBytes,
      'status': ?status,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
      'verifyChecksum': ?verifyChecksum,
      'visibility': ?visibility,
      'webDownload': ?webDownload,
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      checksum: map['checksum'] == null ? null : (map['checksum'] as String).input(),
      containerFormat: map['containerFormat'] == null ? null : (map['containerFormat'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      decompress: map['decompress'] == null ? null : (map['decompress'] as bool).input(),
      diskFormat: map['diskFormat'] == null ? null : (map['diskFormat'] as String).input(),
      file: map['file'] == null ? null : (map['file'] as String).input(),
      hidden: map['hidden'] == null ? null : (map['hidden'] as bool).input(),
      imageCachePath: map['imageCachePath'] == null ? null : (map['imageCachePath'] as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      imageSourcePassword: map['imageSourcePassword'] == null ? null : (map['imageSourcePassword'] as String).input(),
      imageSourceUrl: map['imageSourceUrl'] == null ? null : (map['imageSourceUrl'] as String).input(),
      imageSourceUsername: map['imageSourceUsername'] == null ? null : (map['imageSourceUsername'] as String).input(),
      localFilePath: map['localFilePath'] == null ? null : (map['localFilePath'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      minDiskGb: map['minDiskGb'] == null ? null : (map['minDiskGb'] as int).input(),
      minRamMb: map['minRamMb'] == null ? null : (map['minRamMb'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      owner: map['owner'] == null ? null : (map['owner'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      protected: map['protected'] == null ? null : (map['protected'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      schema: map['schema'] == null ? null : (map['schema'] as String).input(),
      sizeBytes: map['sizeBytes'] == null ? null : (map['sizeBytes'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
      verifyChecksum: map['verifyChecksum'] == null ? null : (map['verifyChecksum'] as bool).input(),
      visibility: map['visibility'] == null ? null : (map['visibility'] as String).input(),
      webDownload: map['webDownload'] == null ? null : (map['webDownload'] as bool).input(),
    );
  }
}

