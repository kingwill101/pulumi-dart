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
    pulumi.Output<String>? checksum,
    pulumi.Output<String>? containerFormat,
    pulumi.Output<String>? createdAt,
    pulumi.Output<bool>? decompress,
    pulumi.Output<String>? diskFormat,
    pulumi.Output<String>? file,
    pulumi.Output<bool>? hidden,
    pulumi.Output<String>? imageCachePath,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? imageSourcePassword,
    pulumi.Output<String>? imageSourceUrl,
    pulumi.Output<String>? imageSourceUsername,
    pulumi.Output<String>? localFilePath,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<int>? minDiskGb,
    pulumi.Output<int>? minRamMb,
    pulumi.Output<String>? name,
    pulumi.Output<String>? owner,
    pulumi.Output<Map<String, String>>? properties,
    pulumi.Output<bool>? protected,
    pulumi.Output<String>? region,
    pulumi.Output<String>? schema,
    pulumi.Output<int>? sizeBytes,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<bool>? verifyChecksum,
    pulumi.Output<String>? visibility,
    pulumi.Output<bool>? webDownload,
  }) :
      checksum = pulumi.Input.asOptionalInput<String>(checksum),
      containerFormat = pulumi.Input.asOptionalInput<String>(containerFormat),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      decompress = pulumi.Input.asOptionalInput<bool>(decompress),
      diskFormat = pulumi.Input.asOptionalInput<String>(diskFormat),
      file = pulumi.Input.asOptionalInput<String>(file),
      hidden = pulumi.Input.asOptionalInput<bool>(hidden),
      imageCachePath = pulumi.Input.asOptionalInput<String>(imageCachePath),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      imageSourcePassword = pulumi.Input.asOptionalInput<String>(imageSourcePassword),
      imageSourceUrl = pulumi.Input.asOptionalInput<String>(imageSourceUrl),
      imageSourceUsername = pulumi.Input.asOptionalInput<String>(imageSourceUsername),
      localFilePath = pulumi.Input.asOptionalInput<String>(localFilePath),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      minDiskGb = pulumi.Input.asOptionalInput<int>(minDiskGb),
      minRamMb = pulumi.Input.asOptionalInput<int>(minRamMb),
      name = pulumi.Input.asOptionalInput<String>(name),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      properties = pulumi.Input.asOptionalInput<Map<String, String>>(properties),
      protected = pulumi.Input.asOptionalInput<bool>(protected),
      region = pulumi.Input.asOptionalInput<String>(region),
      schema = pulumi.Input.asOptionalInput<String>(schema),
      sizeBytes = pulumi.Input.asOptionalInput<int>(sizeBytes),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      verifyChecksum = pulumi.Input.asOptionalInput<bool>(verifyChecksum),
      visibility = pulumi.Input.asOptionalInput<String>(visibility),
      webDownload = pulumi.Input.asOptionalInput<bool>(webDownload);

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
      checksum: map['checksum'] == null ? null : pulumi.Output.create<String>(map['checksum'] as String),
      containerFormat: map['containerFormat'] == null ? null : pulumi.Output.create<String>(map['containerFormat'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      decompress: map['decompress'] == null ? null : pulumi.Output.create<bool>(map['decompress'] as bool),
      diskFormat: map['diskFormat'] == null ? null : pulumi.Output.create<String>(map['diskFormat'] as String),
      file: map['file'] == null ? null : pulumi.Output.create<String>(map['file'] as String),
      hidden: map['hidden'] == null ? null : pulumi.Output.create<bool>(map['hidden'] as bool),
      imageCachePath: map['imageCachePath'] == null ? null : pulumi.Output.create<String>(map['imageCachePath'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      imageSourcePassword: map['imageSourcePassword'] == null ? null : pulumi.Output.create<String>(map['imageSourcePassword'] as String),
      imageSourceUrl: map['imageSourceUrl'] == null ? null : pulumi.Output.create<String>(map['imageSourceUrl'] as String),
      imageSourceUsername: map['imageSourceUsername'] == null ? null : pulumi.Output.create<String>(map['imageSourceUsername'] as String),
      localFilePath: map['localFilePath'] == null ? null : pulumi.Output.create<String>(map['localFilePath'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      minDiskGb: map['minDiskGb'] == null ? null : pulumi.Output.create<int>(map['minDiskGb'] as int),
      minRamMb: map['minRamMb'] == null ? null : pulumi.Output.create<int>(map['minRamMb'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['properties'] as Map).cast<String, String>()),
      protected: map['protected'] == null ? null : pulumi.Output.create<bool>(map['protected'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<String>(map['schema'] as String),
      sizeBytes: map['sizeBytes'] == null ? null : pulumi.Output.create<int>(map['sizeBytes'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      verifyChecksum: map['verifyChecksum'] == null ? null : pulumi.Output.create<bool>(map['verifyChecksum'] as bool),
      visibility: map['visibility'] == null ? null : pulumi.Output.create<String>(map['visibility'] as String),
      webDownload: map['webDownload'] == null ? null : pulumi.Output.create<bool>(map['webDownload'] as bool),
    );
  }
}

