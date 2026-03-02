// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_compute_beta.dart';
import 'deprecation_status_compute_beta.dart';
import 'guest_os_feature_compute_beta.dart';
import 'image_architecture_compute_beta.dart';
import 'image_raw_disk_compute_beta.dart';
import 'image_source_type_compute_beta.dart';
import 'initial_state_config_compute_beta.dart';
import 'rollout_policy_compute_beta.dart';

/// {@template pulumi_compute_beta_image_compute_beta_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_image_compute_beta_args_doc}
class ImageComputeBetaArgs {
  /// The architecture of the image. Valid values are ARM64 or X86_64.
  final pulumi.Input<ImageArchitectureComputeBeta>? architecture;
  /// Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
  final pulumi.Input<String>? archiveSizeBytes;
  /// The deprecation status associated with this image.
  final pulumi.Input<DeprecationStatusComputeBeta>? deprecated;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Size of the image when restored onto a persistent disk (in GB).
  final pulumi.Input<String>? diskSizeGb;
  /// Whether this image is created from a confidential compute mode disk. [Output Only]: This field is not set by user, but from source disk.
  final pulumi.Input<bool>? enableConfidentialCompute;
  /// The name of the image family to which this image belongs. The image family name can be from a publicly managed image family provided by Compute Engine, or from a custom image family you create. For example, centos-stream-9 is a publicly available image family. For more information, see Image family best practices. When creating disks, you can specify an image family instead of a specific image name. The image family always returns its latest image that is not deprecated. The name of the image family must comply with RFC1035.
  final pulumi.Input<String>? family;
  /// Force image creation if true.
  final pulumi.Input<bool>? forceCreate;
  /// A list of features to enable on the guest operating system. Applicable only for bootable images. To see a list of available options, see the guestOSfeatures[].type parameter.
  final pulumi.Input<List<GuestOsFeatureComputeBeta>>? guestOsFeatures;
  /// Encrypts the image using a customer-supplied encryption key. After you encrypt an image with a customer-supplied key, you must provide the same key if you use the image later (e.g. to create a disk from the image). Customer-supplied encryption keys do not protect access to metadata of the disk. If you do not provide an encryption key when creating the image, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the image later.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>? imageEncryptionKey;
  /// Labels to apply to this image. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;
  /// Integer license codes indicating which licenses are attached to this image.
  final pulumi.Input<List<String>>? licenseCodes;
  /// Any applicable license URI.
  final pulumi.Input<List<String>>? licenses;
  /// A flag for marketplace VM disk created from the image, which is designed for marketplace VM disk to prevent the proprietary data on the disk from being accessed unwantedly. The flag will be inherited by the disk created from the image. The disk with locked flag set to true will be prohibited from performing the operations below: - R/W or R/O disk attach - Disk detach, if disk is created via create-on-create - Create images - Create snapshots - Create disk clone (create disk from the current disk) The image with the locked field set to true will be prohibited from performing the operations below: - Create images from the current image - Update the locked field for the current image The instance with at least one disk with locked flag set to true will be prohibited from performing the operations below: - Secondary disk attach - Create instant snapshot - Create machine images - Create instance template - Delete the instance with --keep-disk parameter set to true
  final pulumi.Input<bool>? locked;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The parameters of the raw disk image.
  final pulumi.Input<ImageRawDiskComputeBeta>? rawDisk;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// A rollout policy to apply to this image. When specified, the rollout policy overrides per-zone references to the image via the associated image family. The rollout policy restricts the zones where this image is accessible when using a zonal image family reference. When the rollout policy does not include the user specified zone, or if the zone is rolled out, this image is accessible. The rollout policy for this image is read-only, except for allowlisted users. This field might not be configured. To view the latest non-deprecated image in a specific zone, use the imageFamilyViews.get method.
  final pulumi.Input<RolloutPolicyComputeBeta>? rolloutOverride;
  /// Set the secure boot keys of shielded instance.
  final pulumi.Input<InitialStateConfigComputeBeta>? shieldedInstanceInitialState;
  /// URL of the source disk used to create this image. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceDisk;
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>? sourceDiskEncryptionKey;
  /// URL of the source image used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ images/image_name - projects/project_id/global/images/image_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceImage;
  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>? sourceImageEncryptionKey;
  /// URL of the source snapshot used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ snapshots/snapshot_name - projects/project_id/global/snapshots/snapshot_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceSnapshot;
  /// The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>? sourceSnapshotEncryptionKey;
  /// The type of the image used to create this disk. The default and only valid value is RAW.
  final pulumi.Input<ImageSourceTypeComputeBeta>? sourceType;
  /// Cloud Storage bucket storage location of the image (regional or multi-regional).
  final pulumi.Input<List<String>>? storageLocations;
  /// A list of publicly visible user-licenses. Unlike regular licenses, user provided licenses can be modified after the disk is created. This includes a list of URLs to the license resource. For example, to provide a debian license: https://www.googleapis.com/compute/v1/projects/debian-cloud/global/licenses/debian-9-stretch
  final pulumi.Input<List<String>>? userLicenses;

  /// Creates a new [ImageComputeBetaArgs].
  /// [architecture] The architecture of the image. Valid values are ARM64 or X86_64.
  /// [archiveSizeBytes] Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
  /// [deprecated] The deprecation status associated with this image.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [diskSizeGb] Size of the image when restored onto a persistent disk (in GB).
  /// [enableConfidentialCompute] Whether this image is created from a confidential compute mode disk. [Output Only]: This field is not set by user, but from source disk.
  /// [family] The name of the image family to which this image belongs. The image family name can be from a publicly managed image family provided by Compute Engine, or from a custom image family you create. For example, centos-stream-9 is a publicly available image family. For more information, see Image family best practices. When creating disks, you can specify an image family instead of a specific image name. The image family always returns its latest image that is not deprecated. The name of the image family must comply with RFC1035.
  /// [forceCreate] Force image creation if true.
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. To see a list of available options, see the guestOSfeatures[].type parameter.
  /// [imageEncryptionKey] Encrypts the image using a customer-supplied encryption key. After you encrypt an image with a customer-supplied key, you must provide the same key if you use the image later (e.g. to create a disk from the image). Customer-supplied encryption keys do not protect access to metadata of the disk. If you do not provide an encryption key when creating the image, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the image later.
  /// [labels] Labels to apply to this image. These can be later modified by the setLabels method.
  /// [licenseCodes] Integer license codes indicating which licenses are attached to this image.
  /// [licenses] Any applicable license URI.
  /// [locked] A flag for marketplace VM disk created from the image, which is designed for marketplace VM disk to prevent the proprietary data on the disk from being accessed unwantedly. The flag will be inherited by the disk created from the image. The disk with locked flag set to true will be prohibited from performing the operations below: - R/W or R/O disk attach - Disk detach, if disk is created via create-on-create - Create images - Create snapshots - Create disk clone (create disk from the current disk) The image with the locked field set to true will be prohibited from performing the operations below: - Create images from the current image - Update the locked field for the current image The instance with at least one disk with locked flag set to true will be prohibited from performing the operations below: - Secondary disk attach - Create instant snapshot - Create machine images - Create instance template - Delete the instance with --keep-disk parameter set to true
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [rawDisk] The parameters of the raw disk image.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [rolloutOverride] A rollout policy to apply to this image. When specified, the rollout policy overrides per-zone references to the image via the associated image family. The rollout policy restricts the zones where this image is accessible when using a zonal image family reference. When the rollout policy does not include the user specified zone, or if the zone is rolled out, this image is accessible. The rollout policy for this image is read-only, except for allowlisted users. This field might not be configured. To view the latest non-deprecated image in a specific zone, use the imageFamilyViews.get method.
  /// [shieldedInstanceInitialState] Set the secure boot keys of shielded instance.
  /// [sourceDisk] URL of the source disk used to create this image. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  /// [sourceDiskEncryptionKey] The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceImage] URL of the source image used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ images/image_name - projects/project_id/global/images/image_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  /// [sourceImageEncryptionKey] The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  /// [sourceSnapshot] URL of the source snapshot used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ snapshots/snapshot_name - projects/project_id/global/snapshots/snapshot_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  /// [sourceType] The type of the image used to create this disk. The default and only valid value is RAW.
  /// [storageLocations] Cloud Storage bucket storage location of the image (regional or multi-regional).
  /// [userLicenses] A list of publicly visible user-licenses. Unlike regular licenses, user provided licenses can be modified after the disk is created. This includes a list of URLs to the license resource. For example, to provide a debian license: https://www.googleapis.com/compute/v1/projects/debian-cloud/global/licenses/debian-9-stretch
  ImageComputeBetaArgs({
    this.architecture,
    this.archiveSizeBytes,
    this.deprecated,
    this.description,
    this.diskSizeGb,
    this.enableConfidentialCompute,
    this.family,
    this.forceCreate,
    this.guestOsFeatures,
    this.imageEncryptionKey,
    this.labels,
    this.licenseCodes,
    this.licenses,
    this.locked,
    this.name,
    this.project,
    this.rawDisk,
    this.requestId,
    this.rolloutOverride,
    this.shieldedInstanceInitialState,
    this.sourceDisk,
    this.sourceDiskEncryptionKey,
    this.sourceImage,
    this.sourceImageEncryptionKey,
    this.sourceSnapshot,
    this.sourceSnapshotEncryptionKey,
    this.sourceType,
    this.storageLocations,
    this.userLicenses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?pulumi.Input.mapOptionalInputValue<ImageArchitectureComputeBeta, String>(architecture, (value) => value.value),
      'archiveSizeBytes': ?archiveSizeBytes,
      'deprecated': ?pulumi.Input.mapOptionalInputValue<DeprecationStatusComputeBeta, Map<String, dynamic>>(deprecated, (value) => value.toMap()),
      'description': ?description,
      'diskSizeGb': ?diskSizeGb,
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'family': ?family,
      'forceCreate': ?forceCreate,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<GuestOsFeatureComputeBeta>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<GuestOsFeatureComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeBeta, Map<String, dynamic>>(imageEncryptionKey, (value) => value.toMap()),
      'labels': ?labels,
      'licenseCodes': ?licenseCodes,
      'licenses': ?licenses,
      'locked': ?locked,
      'name': ?name,
      'project': ?project,
      'rawDisk': ?pulumi.Input.mapOptionalInputValue<ImageRawDiskComputeBeta, Map<String, dynamic>>(rawDisk, (value) => value.toMap()),
      'requestId': ?requestId,
      'rolloutOverride': ?pulumi.Input.mapOptionalInputValue<RolloutPolicyComputeBeta, Map<String, dynamic>>(rolloutOverride, (value) => value.toMap()),
      'shieldedInstanceInitialState': ?pulumi.Input.mapOptionalInputValue<InitialStateConfigComputeBeta, Map<String, dynamic>>(shieldedInstanceInitialState, (value) => value.toMap()),
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeBeta, Map<String, dynamic>>(sourceDiskEncryptionKey, (value) => value.toMap()),
      'sourceImage': ?sourceImage,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeBeta, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceSnapshot': ?sourceSnapshot,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeBeta, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'sourceType': ?pulumi.Input.mapOptionalInputValue<ImageSourceTypeComputeBeta, String>(sourceType, (value) => value.value),
      'storageLocations': ?storageLocations,
      'userLicenses': ?userLicenses,
    };
  }

  factory ImageComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return ImageComputeBetaArgs(
      architecture: map['architecture'] == null ? null : (ImageArchitectureComputeBeta.fromValue(map['architecture']! as String)).input(),
      archiveSizeBytes: map['archiveSizeBytes'] == null ? null : (map['archiveSizeBytes']! as String).input(),
      deprecated: map['deprecated'] == null ? null : (DeprecationStatusComputeBeta.fromMap((map['deprecated']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb']! as String).input(),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : (map['enableConfidentialCompute']! as bool).input(),
      family: map['family'] == null ? null : (map['family']! as String).input(),
      forceCreate: map['forceCreate'] == null ? null : (map['forceCreate']! as bool).input(),
      guestOsFeatures: map['guestOsFeatures'] == null ? null : (pulumi.Input.decodeList<GuestOsFeatureComputeBeta>(map['guestOsFeatures']!, (value) => GuestOsFeatureComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      imageEncryptionKey: map['imageEncryptionKey'] == null ? null : (CustomerEncryptionKeyComputeBeta.fromMap((map['imageEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      licenseCodes: map['licenseCodes'] == null ? null : ((map['licenseCodes']! as List).cast<String>()).input(),
      licenses: map['licenses'] == null ? null : ((map['licenses']! as List).cast<String>()).input(),
      locked: map['locked'] == null ? null : (map['locked']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rawDisk: map['rawDisk'] == null ? null : (ImageRawDiskComputeBeta.fromMap((map['rawDisk']! as Map).cast<String, dynamic>())).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      rolloutOverride: map['rolloutOverride'] == null ? null : (RolloutPolicyComputeBeta.fromMap((map['rolloutOverride']! as Map).cast<String, dynamic>())).input(),
      shieldedInstanceInitialState: map['shieldedInstanceInitialState'] == null ? null : (InitialStateConfigComputeBeta.fromMap((map['shieldedInstanceInitialState']! as Map).cast<String, dynamic>())).input(),
      sourceDisk: map['sourceDisk'] == null ? null : (map['sourceDisk']! as String).input(),
      sourceDiskEncryptionKey: map['sourceDiskEncryptionKey'] == null ? null : (CustomerEncryptionKeyComputeBeta.fromMap((map['sourceDiskEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      sourceImage: map['sourceImage'] == null ? null : (map['sourceImage']! as String).input(),
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null ? null : (CustomerEncryptionKeyComputeBeta.fromMap((map['sourceImageEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      sourceSnapshot: map['sourceSnapshot'] == null ? null : (map['sourceSnapshot']! as String).input(),
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null ? null : (CustomerEncryptionKeyComputeBeta.fromMap((map['sourceSnapshotEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      sourceType: map['sourceType'] == null ? null : (ImageSourceTypeComputeBeta.fromValue(map['sourceType']! as String)).input(),
      storageLocations: map['storageLocations'] == null ? null : ((map['storageLocations']! as List).cast<String>()).input(),
      userLicenses: map['userLicenses'] == null ? null : ((map['userLicenses']! as List).cast<String>()).input(),
    );
  }
}

