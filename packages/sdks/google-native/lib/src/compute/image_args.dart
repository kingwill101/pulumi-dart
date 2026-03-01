// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key.dart';
import 'deprecation_status.dart';
import 'guest_os_feature.dart';
import 'image_architecture.dart';
import 'image_raw_disk.dart';
import 'image_source_type.dart';
import 'initial_state_config.dart';
import 'rollout_policy.dart';

/// {@template pulumi_compute_alpha_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_image_args_doc}
class ImageArgs {
  /// The architecture of the image. Valid values are ARM64 or X86_64.
  final pulumi.Input<ImageArchitecture>? architecture;
  /// Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
  final pulumi.Input<String>? archiveSizeBytes;
  /// The deprecation status associated with this image.
  final pulumi.Input<DeprecationStatus>? deprecated;
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
  final pulumi.Input<List<GuestOsFeature>>? guestOsFeatures;
  /// Encrypts the image using a customer-supplied encryption key. After you encrypt an image with a customer-supplied key, you must provide the same key if you use the image later (e.g. to create a disk from the image). Customer-supplied encryption keys do not protect access to metadata of the disk. If you do not provide an encryption key when creating the image, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the image later.
  final pulumi.Input<CustomerEncryptionKey>? imageEncryptionKey;
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
  final pulumi.Input<ImageRawDisk>? rawDisk;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// A rollout policy to apply to this image. When specified, the rollout policy overrides per-zone references to the image via the associated image family. The rollout policy restricts the zones where this image is accessible when using a zonal image family reference. When the rollout policy does not include the user specified zone, or if the zone is rolled out, this image is accessible. The rollout policy for this image is read-only, except for allowlisted users. This field might not be configured. To view the latest non-deprecated image in a specific zone, use the imageFamilyViews.get method.
  final pulumi.Input<RolloutPolicy>? rolloutOverride;
  /// Set the secure boot keys of shielded instance.
  final pulumi.Input<InitialStateConfig>? shieldedInstanceInitialState;
  /// URL of the source disk used to create this image. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceDisk;
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKey>? sourceDiskEncryptionKey;
  /// URL of the source image used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ images/image_name - projects/project_id/global/images/image_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceImage;
  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKey>? sourceImageEncryptionKey;
  /// URL of the source snapshot used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ snapshots/snapshot_name - projects/project_id/global/snapshots/snapshot_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceSnapshot;
  /// The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKey>? sourceSnapshotEncryptionKey;
  /// The type of the image used to create this disk. The default and only valid value is RAW.
  final pulumi.Input<ImageSourceType>? sourceType;
  /// Cloud Storage bucket storage location of the image (regional or multi-regional).
  final pulumi.Input<List<String>>? storageLocations;
  /// A list of publicly visible user-licenses. Unlike regular licenses, user provided licenses can be modified after the disk is created. This includes a list of URLs to the license resource. For example, to provide a debian license: https://www.googleapis.com/compute/v1/projects/debian-cloud/global/licenses/debian-9-stretch
  final pulumi.Input<List<String>>? userLicenses;

  /// Creates a new [ImageArgs].
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
  ImageArgs({
    pulumi.Output<ImageArchitecture>? architecture,
    pulumi.Output<String>? archiveSizeBytes,
    pulumi.Output<DeprecationStatus>? deprecated,
    pulumi.Output<String>? description,
    pulumi.Output<String>? diskSizeGb,
    pulumi.Output<bool>? enableConfidentialCompute,
    pulumi.Output<String>? family,
    pulumi.Output<bool>? forceCreate,
    pulumi.Output<List<GuestOsFeature>>? guestOsFeatures,
    pulumi.Output<CustomerEncryptionKey>? imageEncryptionKey,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<String>>? licenseCodes,
    pulumi.Output<List<String>>? licenses,
    pulumi.Output<bool>? locked,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<ImageRawDisk>? rawDisk,
    pulumi.Output<String>? requestId,
    pulumi.Output<RolloutPolicy>? rolloutOverride,
    pulumi.Output<InitialStateConfig>? shieldedInstanceInitialState,
    pulumi.Output<String>? sourceDisk,
    pulumi.Output<CustomerEncryptionKey>? sourceDiskEncryptionKey,
    pulumi.Output<String>? sourceImage,
    pulumi.Output<CustomerEncryptionKey>? sourceImageEncryptionKey,
    pulumi.Output<String>? sourceSnapshot,
    pulumi.Output<CustomerEncryptionKey>? sourceSnapshotEncryptionKey,
    pulumi.Output<ImageSourceType>? sourceType,
    pulumi.Output<List<String>>? storageLocations,
    pulumi.Output<List<String>>? userLicenses,
  }) :
      architecture = pulumi.Input.asOptionalInput<ImageArchitecture>(architecture),
      archiveSizeBytes = pulumi.Input.asOptionalInput<String>(archiveSizeBytes),
      deprecated = pulumi.Input.asOptionalInput<DeprecationStatus>(deprecated),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskSizeGb = pulumi.Input.asOptionalInput<String>(diskSizeGb),
      enableConfidentialCompute = pulumi.Input.asOptionalInput<bool>(enableConfidentialCompute),
      family = pulumi.Input.asOptionalInput<String>(family),
      forceCreate = pulumi.Input.asOptionalInput<bool>(forceCreate),
      guestOsFeatures = pulumi.Input.asOptionalInput<List<GuestOsFeature>>(guestOsFeatures),
      imageEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKey>(imageEncryptionKey),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      licenseCodes = pulumi.Input.asOptionalInput<List<String>>(licenseCodes),
      licenses = pulumi.Input.asOptionalInput<List<String>>(licenses),
      locked = pulumi.Input.asOptionalInput<bool>(locked),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rawDisk = pulumi.Input.asOptionalInput<ImageRawDisk>(rawDisk),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      rolloutOverride = pulumi.Input.asOptionalInput<RolloutPolicy>(rolloutOverride),
      shieldedInstanceInitialState = pulumi.Input.asOptionalInput<InitialStateConfig>(shieldedInstanceInitialState),
      sourceDisk = pulumi.Input.asOptionalInput<String>(sourceDisk),
      sourceDiskEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKey>(sourceDiskEncryptionKey),
      sourceImage = pulumi.Input.asOptionalInput<String>(sourceImage),
      sourceImageEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKey>(sourceImageEncryptionKey),
      sourceSnapshot = pulumi.Input.asOptionalInput<String>(sourceSnapshot),
      sourceSnapshotEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKey>(sourceSnapshotEncryptionKey),
      sourceType = pulumi.Input.asOptionalInput<ImageSourceType>(sourceType),
      storageLocations = pulumi.Input.asOptionalInput<List<String>>(storageLocations),
      userLicenses = pulumi.Input.asOptionalInput<List<String>>(userLicenses);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?pulumi.Input.mapOptionalInputValue<ImageArchitecture, String>(architecture, (value) => value.value),
      'archiveSizeBytes': ?archiveSizeBytes,
      'deprecated': ?pulumi.Input.mapOptionalInputValue<DeprecationStatus, Map<String, dynamic>>(deprecated, (value) => value.toMap()),
      'description': ?description,
      'diskSizeGb': ?diskSizeGb,
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'family': ?family,
      'forceCreate': ?forceCreate,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<GuestOsFeature>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<GuestOsFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(imageEncryptionKey, (value) => value.toMap()),
      'labels': ?labels,
      'licenseCodes': ?licenseCodes,
      'licenses': ?licenses,
      'locked': ?locked,
      'name': ?name,
      'project': ?project,
      'rawDisk': ?pulumi.Input.mapOptionalInputValue<ImageRawDisk, Map<String, dynamic>>(rawDisk, (value) => value.toMap()),
      'requestId': ?requestId,
      'rolloutOverride': ?pulumi.Input.mapOptionalInputValue<RolloutPolicy, Map<String, dynamic>>(rolloutOverride, (value) => value.toMap()),
      'shieldedInstanceInitialState': ?pulumi.Input.mapOptionalInputValue<InitialStateConfig, Map<String, dynamic>>(shieldedInstanceInitialState, (value) => value.toMap()),
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(sourceDiskEncryptionKey, (value) => value.toMap()),
      'sourceImage': ?sourceImage,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceSnapshot': ?sourceSnapshot,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'sourceType': ?pulumi.Input.mapOptionalInputValue<ImageSourceType, String>(sourceType, (value) => value.value),
      'storageLocations': ?storageLocations,
      'userLicenses': ?userLicenses,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      architecture: map['architecture'] == null ? null : pulumi.Output.create<ImageArchitecture>(ImageArchitecture.fromValue(map['architecture'] as String)),
      archiveSizeBytes: map['archiveSizeBytes'] == null ? null : pulumi.Output.create<String>(map['archiveSizeBytes'] as String),
      deprecated: map['deprecated'] == null ? null : pulumi.Output.create<DeprecationStatus>(DeprecationStatus.fromMap((map['deprecated'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskSizeGb: map['diskSizeGb'] == null ? null : pulumi.Output.create<String>(map['diskSizeGb'] as String),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : pulumi.Output.create<bool>(map['enableConfidentialCompute'] as bool),
      family: map['family'] == null ? null : pulumi.Output.create<String>(map['family'] as String),
      forceCreate: map['forceCreate'] == null ? null : pulumi.Output.create<bool>(map['forceCreate'] as bool),
      guestOsFeatures: map['guestOsFeatures'] == null ? null : pulumi.Output.create<List<GuestOsFeature>>(pulumi.Input.decodeList<GuestOsFeature>(map['guestOsFeatures'], (value) => GuestOsFeature.fromMap((value as Map).cast<String, dynamic>()))),
      imageEncryptionKey: map['imageEncryptionKey'] == null ? null : pulumi.Output.create<CustomerEncryptionKey>(CustomerEncryptionKey.fromMap((map['imageEncryptionKey'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      licenseCodes: map['licenseCodes'] == null ? null : pulumi.Output.create<List<String>>((map['licenseCodes'] as List).cast<String>()),
      licenses: map['licenses'] == null ? null : pulumi.Output.create<List<String>>((map['licenses'] as List).cast<String>()),
      locked: map['locked'] == null ? null : pulumi.Output.create<bool>(map['locked'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rawDisk: map['rawDisk'] == null ? null : pulumi.Output.create<ImageRawDisk>(ImageRawDisk.fromMap((map['rawDisk'] as Map).cast<String, dynamic>())),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      rolloutOverride: map['rolloutOverride'] == null ? null : pulumi.Output.create<RolloutPolicy>(RolloutPolicy.fromMap((map['rolloutOverride'] as Map).cast<String, dynamic>())),
      shieldedInstanceInitialState: map['shieldedInstanceInitialState'] == null ? null : pulumi.Output.create<InitialStateConfig>(InitialStateConfig.fromMap((map['shieldedInstanceInitialState'] as Map).cast<String, dynamic>())),
      sourceDisk: map['sourceDisk'] == null ? null : pulumi.Output.create<String>(map['sourceDisk'] as String),
      sourceDiskEncryptionKey: map['sourceDiskEncryptionKey'] == null ? null : pulumi.Output.create<CustomerEncryptionKey>(CustomerEncryptionKey.fromMap((map['sourceDiskEncryptionKey'] as Map).cast<String, dynamic>())),
      sourceImage: map['sourceImage'] == null ? null : pulumi.Output.create<String>(map['sourceImage'] as String),
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null ? null : pulumi.Output.create<CustomerEncryptionKey>(CustomerEncryptionKey.fromMap((map['sourceImageEncryptionKey'] as Map).cast<String, dynamic>())),
      sourceSnapshot: map['sourceSnapshot'] == null ? null : pulumi.Output.create<String>(map['sourceSnapshot'] as String),
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null ? null : pulumi.Output.create<CustomerEncryptionKey>(CustomerEncryptionKey.fromMap((map['sourceSnapshotEncryptionKey'] as Map).cast<String, dynamic>())),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<ImageSourceType>(ImageSourceType.fromValue(map['sourceType'] as String)),
      storageLocations: map['storageLocations'] == null ? null : pulumi.Output.create<List<String>>((map['storageLocations'] as List).cast<String>()),
      userLicenses: map['userLicenses'] == null ? null : pulumi.Output.create<List<String>>((map['userLicenses'] as List).cast<String>()),
    );
  }
}

