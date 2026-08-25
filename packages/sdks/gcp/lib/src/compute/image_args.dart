// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_guest_os_feature.dart';
import 'image_image_encryption_key.dart';
import 'image_params.dart';
import 'image_raw_disk.dart';
import 'image_shielded_instance_initial_state.dart';
import 'image_source_disk_encryption_key.dart';
import 'image_source_image_encryption_key.dart';
import 'image_source_snapshot_encryption_key.dart';

/// {@template pulumi_compute_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_compute_image_image_args_doc}
class ImageArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String?>? description;
  /// Size of the image when restored onto a persistent disk (in GB).
  final pulumi.Input<int?>? diskSizeGb;
  /// The name of the image family to which this image belongs. You can
  /// create disks by specifying an image family instead of a specific
  /// image name. The image family always returns its latest image that is
  /// not deprecated. The name of the image family must comply with
  /// RFC1035.
  final pulumi.Input<String?>? family;
  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable images.
  /// Structure is documented below.
  final pulumi.Input<List<ImageGuestOsFeature>?>? guestOsFeatures;
  /// Encrypts the image using a customer-supplied encryption key.
  /// After you encrypt an image with a customer-supplied key, you must
  /// provide the same key if you use the image later (e.g. to create a
  /// disk from the image)
  /// Structure is documented below.
  final pulumi.Input<ImageImageEncryptionKey?>? imageEncryptionKey;
  /// Labels to apply to this Image.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Any applicable license URI.
  final pulumi.Input<List<String>?>? licenses;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload.
  /// Structure is documented below.
  final pulumi.Input<ImageParams?>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The parameters of the raw disk image.
  /// Structure is documented below.
  final pulumi.Input<ImageRawDisk?>? rawDisk;
  /// Set the secure boot keys of shielded instance.
  /// Structure is documented below.
  final pulumi.Input<ImageShieldedInstanceInitialState?>? shieldedInstanceInitialState;
  /// The source disk to create this image based on.
  /// You must provide either this property or the
  /// rawDisk.source property but not both to create an image.
  final pulumi.Input<String?>? sourceDisk;
  /// The customer-supplied encryption key of the source disk. Required if
  /// the source disk is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final pulumi.Input<ImageSourceDiskEncryptionKey?>? sourceDiskEncryptionKey;
  /// URL of the source image used to create this image. In order to create an image, you must provide the full or partial
  /// URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  final pulumi.Input<String?>? sourceImage;
  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final pulumi.Input<ImageSourceImageEncryptionKey?>? sourceImageEncryptionKey;
  /// URL of the source snapshot used to create this image.
  /// In order to create an image, you must provide the full or partial URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The sourceImage URL
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  final pulumi.Input<String?>? sourceSnapshot;
  /// The customer-supplied encryption key of the source snapshot. Required if
  /// the source snapshot is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final pulumi.Input<ImageSourceSnapshotEncryptionKey?>? sourceSnapshotEncryptionKey;
  /// Cloud Storage bucket storage location of the image
  /// (regional or multi-regional).
  /// Reference link: https://cloud.google.com/compute/docs/reference/rest/v1/images
  final pulumi.Input<List<String>?>? storageLocations;

  /// Creates a new [ImageArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when
  /// [diskSizeGb] Size of the image when restored onto a persistent disk (in GB).
  /// [family] The name of the image family to which this image belongs. You can
  /// [guestOsFeatures] A list of features to enable on the guest operating system.
  /// [imageEncryptionKey] Encrypts the image using a customer-supplied encryption key.
  /// [labels] Labels to apply to this Image.
  /// [licenses] Any applicable license URI.
  /// [name] Name of the resource; provided by the client when the resource is
  /// [params] Additional params passed with the request, but not persisted as part of resource payload.
  /// [project] The ID of the project in which the resource belongs.
  /// [rawDisk] The parameters of the raw disk image.
  /// [shieldedInstanceInitialState] Set the secure boot keys of shielded instance.
  /// [sourceDisk] The source disk to create this image based on.
  /// [sourceDiskEncryptionKey] The customer-supplied encryption key of the source disk. Required if
  /// [sourceImage] URL of the source image used to create this image. In order to create an image, you must provide the full or partial
  /// [sourceImageEncryptionKey] The customer-supplied encryption key of the source image. Required if
  /// [sourceSnapshot] URL of the source snapshot used to create this image.
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot. Required if
  /// [storageLocations] Cloud Storage bucket storage location of the image
  const ImageArgs({
    this.deletionPolicy,
    this.description,
    this.diskSizeGb,
    this.family,
    this.guestOsFeatures,
    this.imageEncryptionKey,
    this.labels,
    this.licenses,
    this.name,
    this.params,
    this.project,
    this.rawDisk,
    this.shieldedInstanceInitialState,
    this.sourceDisk,
    this.sourceDiskEncryptionKey,
    this.sourceImage,
    this.sourceImageEncryptionKey,
    this.sourceSnapshot,
    this.sourceSnapshotEncryptionKey,
    this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskSizeGb': ?diskSizeGb,
      'family': ?family,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<ImageGuestOsFeature>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<ImageGuestOsFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<ImageImageEncryptionKey, Map<String, dynamic>>(imageEncryptionKey, (value) => value.toMap()),
      'labels': ?labels,
      'licenses': ?licenses,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<ImageParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'rawDisk': ?pulumi.Input.mapOptionalInputValue<ImageRawDisk, Map<String, dynamic>>(rawDisk, (value) => value.toMap()),
      'shieldedInstanceInitialState': ?pulumi.Input.mapOptionalInputValue<ImageShieldedInstanceInitialState, Map<String, dynamic>>(shieldedInstanceInitialState, (value) => value.toMap()),
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<ImageSourceDiskEncryptionKey, Map<String, dynamic>>(sourceDiskEncryptionKey, (value) => value.toMap()),
      'sourceImage': ?sourceImage,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<ImageSourceImageEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceSnapshot': ?sourceSnapshot,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<ImageSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'storageLocations': ?storageLocations,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestOsFeatures: (() { final guardedValue = map['guestOsFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageGuestOsFeature>(guardedValue, (value) => ImageGuestOsFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageEncryptionKey: (() { final guardedValue = map['imageEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      licenses: (() { final guardedValue = map['licenses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawDisk: (() { final guardedValue = map['rawDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageRawDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shieldedInstanceInitialState: (() { final guardedValue = map['shieldedInstanceInitialState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageShieldedInstanceInitialState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceDisk: (() { final guardedValue = map['sourceDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDiskEncryptionKey: (() { final guardedValue = map['sourceDiskEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageSourceDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceImage: (() { final guardedValue = map['sourceImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageEncryptionKey: (() { final guardedValue = map['sourceImageEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageSourceImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceSnapshot: (() { final guardedValue = map['sourceSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSnapshotEncryptionKey: (() { final guardedValue = map['sourceSnapshotEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageSourceSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageLocations: (() { final guardedValue = map['storageLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
