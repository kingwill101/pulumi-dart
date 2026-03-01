// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_compute_v1.dart';
import 'deprecation_status_compute_v1.dart';
import 'guest_os_feature_compute_v1.dart';
import 'image_architecture_compute_v1.dart';
import 'image_raw_disk_compute_v1.dart';
import 'image_source_type_compute_v1.dart';
import 'initial_state_config_compute_v1.dart';

/// {@template pulumi_compute_v1_image_compute_v1_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_image_compute_v1_args_doc}
class ImageComputeV1Args {
  /// The architecture of the image. Valid values are ARM64 or X86_64.
  final pulumi.Input<ImageArchitectureComputeV1>? architecture;
  /// Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
  final pulumi.Input<String>? archiveSizeBytes;
  /// The deprecation status associated with this image.
  final pulumi.Input<DeprecationStatusComputeV1>? deprecated;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Size of the image when restored onto a persistent disk (in GB).
  final pulumi.Input<String>? diskSizeGb;
  /// The name of the image family to which this image belongs. The image family name can be from a publicly managed image family provided by Compute Engine, or from a custom image family you create. For example, centos-stream-9 is a publicly available image family. For more information, see Image family best practices. When creating disks, you can specify an image family instead of a specific image name. The image family always returns its latest image that is not deprecated. The name of the image family must comply with RFC1035.
  final pulumi.Input<String>? family;
  /// Force image creation if true.
  final pulumi.Input<bool>? forceCreate;
  /// A list of features to enable on the guest operating system. Applicable only for bootable images. To see a list of available options, see the guestOSfeatures[].type parameter.
  final pulumi.Input<List<GuestOsFeatureComputeV1>>? guestOsFeatures;
  /// Encrypts the image using a customer-supplied encryption key. After you encrypt an image with a customer-supplied key, you must provide the same key if you use the image later (e.g. to create a disk from the image). Customer-supplied encryption keys do not protect access to metadata of the disk. If you do not provide an encryption key when creating the image, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the image later.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? imageEncryptionKey;
  /// Labels to apply to this image. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;
  /// Integer license codes indicating which licenses are attached to this image.
  final pulumi.Input<List<String>>? licenseCodes;
  /// Any applicable license URI.
  final pulumi.Input<List<String>>? licenses;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The parameters of the raw disk image.
  final pulumi.Input<ImageRawDiskComputeV1>? rawDisk;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Set the secure boot keys of shielded instance.
  final pulumi.Input<InitialStateConfigComputeV1>? shieldedInstanceInitialState;
  /// URL of the source disk used to create this image. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceDisk;
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? sourceDiskEncryptionKey;
  /// URL of the source image used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ images/image_name - projects/project_id/global/images/image_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceImage;
  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? sourceImageEncryptionKey;
  /// URL of the source snapshot used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ snapshots/snapshot_name - projects/project_id/global/snapshots/snapshot_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceSnapshot;
  /// The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? sourceSnapshotEncryptionKey;
  /// The type of the image used to create this disk. The default and only valid value is RAW.
  final pulumi.Input<ImageSourceTypeComputeV1>? sourceType;
  /// Cloud Storage bucket storage location of the image (regional or multi-regional).
  final pulumi.Input<List<String>>? storageLocations;

  /// Creates a new [ImageComputeV1Args].
  /// [architecture] The architecture of the image. Valid values are ARM64 or X86_64.
  /// [archiveSizeBytes] Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
  /// [deprecated] The deprecation status associated with this image.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [diskSizeGb] Size of the image when restored onto a persistent disk (in GB).
  /// [family] The name of the image family to which this image belongs. The image family name can be from a publicly managed image family provided by Compute Engine, or from a custom image family you create. For example, centos-stream-9 is a publicly available image family. For more information, see Image family best practices. When creating disks, you can specify an image family instead of a specific image name. The image family always returns its latest image that is not deprecated. The name of the image family must comply with RFC1035.
  /// [forceCreate] Force image creation if true.
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. To see a list of available options, see the guestOSfeatures[].type parameter.
  /// [imageEncryptionKey] Encrypts the image using a customer-supplied encryption key. After you encrypt an image with a customer-supplied key, you must provide the same key if you use the image later (e.g. to create a disk from the image). Customer-supplied encryption keys do not protect access to metadata of the disk. If you do not provide an encryption key when creating the image, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the image later.
  /// [labels] Labels to apply to this image. These can be later modified by the setLabels method.
  /// [licenseCodes] Integer license codes indicating which licenses are attached to this image.
  /// [licenses] Any applicable license URI.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [rawDisk] The parameters of the raw disk image.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [shieldedInstanceInitialState] Set the secure boot keys of shielded instance.
  /// [sourceDisk] URL of the source disk used to create this image. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  /// [sourceDiskEncryptionKey] The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceImage] URL of the source image used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ images/image_name - projects/project_id/global/images/image_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  /// [sourceImageEncryptionKey] The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  /// [sourceSnapshot] URL of the source snapshot used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ snapshots/snapshot_name - projects/project_id/global/snapshots/snapshot_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  /// [sourceType] The type of the image used to create this disk. The default and only valid value is RAW.
  /// [storageLocations] Cloud Storage bucket storage location of the image (regional or multi-regional).
  ImageComputeV1Args({
    pulumi.Output<ImageArchitectureComputeV1>? architecture,
    pulumi.Output<String>? archiveSizeBytes,
    pulumi.Output<DeprecationStatusComputeV1>? deprecated,
    pulumi.Output<String>? description,
    pulumi.Output<String>? diskSizeGb,
    pulumi.Output<String>? family,
    pulumi.Output<bool>? forceCreate,
    pulumi.Output<List<GuestOsFeatureComputeV1>>? guestOsFeatures,
    pulumi.Output<CustomerEncryptionKeyComputeV1>? imageEncryptionKey,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<String>>? licenseCodes,
    pulumi.Output<List<String>>? licenses,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<ImageRawDiskComputeV1>? rawDisk,
    pulumi.Output<String>? requestId,
    pulumi.Output<InitialStateConfigComputeV1>? shieldedInstanceInitialState,
    pulumi.Output<String>? sourceDisk,
    pulumi.Output<CustomerEncryptionKeyComputeV1>? sourceDiskEncryptionKey,
    pulumi.Output<String>? sourceImage,
    pulumi.Output<CustomerEncryptionKeyComputeV1>? sourceImageEncryptionKey,
    pulumi.Output<String>? sourceSnapshot,
    pulumi.Output<CustomerEncryptionKeyComputeV1>? sourceSnapshotEncryptionKey,
    pulumi.Output<ImageSourceTypeComputeV1>? sourceType,
    pulumi.Output<List<String>>? storageLocations,
  }) :
      architecture = pulumi.Input.asOptionalInput<ImageArchitectureComputeV1>(architecture),
      archiveSizeBytes = pulumi.Input.asOptionalInput<String>(archiveSizeBytes),
      deprecated = pulumi.Input.asOptionalInput<DeprecationStatusComputeV1>(deprecated),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskSizeGb = pulumi.Input.asOptionalInput<String>(diskSizeGb),
      family = pulumi.Input.asOptionalInput<String>(family),
      forceCreate = pulumi.Input.asOptionalInput<bool>(forceCreate),
      guestOsFeatures = pulumi.Input.asOptionalInput<List<GuestOsFeatureComputeV1>>(guestOsFeatures),
      imageEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeV1>(imageEncryptionKey),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      licenseCodes = pulumi.Input.asOptionalInput<List<String>>(licenseCodes),
      licenses = pulumi.Input.asOptionalInput<List<String>>(licenses),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rawDisk = pulumi.Input.asOptionalInput<ImageRawDiskComputeV1>(rawDisk),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      shieldedInstanceInitialState = pulumi.Input.asOptionalInput<InitialStateConfigComputeV1>(shieldedInstanceInitialState),
      sourceDisk = pulumi.Input.asOptionalInput<String>(sourceDisk),
      sourceDiskEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeV1>(sourceDiskEncryptionKey),
      sourceImage = pulumi.Input.asOptionalInput<String>(sourceImage),
      sourceImageEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeV1>(sourceImageEncryptionKey),
      sourceSnapshot = pulumi.Input.asOptionalInput<String>(sourceSnapshot),
      sourceSnapshotEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeV1>(sourceSnapshotEncryptionKey),
      sourceType = pulumi.Input.asOptionalInput<ImageSourceTypeComputeV1>(sourceType),
      storageLocations = pulumi.Input.asOptionalInput<List<String>>(storageLocations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?pulumi.Input.mapOptionalInputValue<ImageArchitectureComputeV1, String>(architecture, (value) => value.value),
      'archiveSizeBytes': ?archiveSizeBytes,
      'deprecated': ?pulumi.Input.mapOptionalInputValue<DeprecationStatusComputeV1, Map<String, dynamic>>(deprecated, (value) => value.toMap()),
      'description': ?description,
      'diskSizeGb': ?diskSizeGb,
      'family': ?family,
      'forceCreate': ?forceCreate,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<GuestOsFeatureComputeV1>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<GuestOsFeatureComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(imageEncryptionKey, (value) => value.toMap()),
      'labels': ?labels,
      'licenseCodes': ?licenseCodes,
      'licenses': ?licenses,
      'name': ?name,
      'project': ?project,
      'rawDisk': ?pulumi.Input.mapOptionalInputValue<ImageRawDiskComputeV1, Map<String, dynamic>>(rawDisk, (value) => value.toMap()),
      'requestId': ?requestId,
      'shieldedInstanceInitialState': ?pulumi.Input.mapOptionalInputValue<InitialStateConfigComputeV1, Map<String, dynamic>>(shieldedInstanceInitialState, (value) => value.toMap()),
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(sourceDiskEncryptionKey, (value) => value.toMap()),
      'sourceImage': ?sourceImage,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceSnapshot': ?sourceSnapshot,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'sourceType': ?pulumi.Input.mapOptionalInputValue<ImageSourceTypeComputeV1, String>(sourceType, (value) => value.value),
      'storageLocations': ?storageLocations,
    };
  }

  factory ImageComputeV1Args.fromMap(Map<String, dynamic> map) {
    return ImageComputeV1Args(
      architecture: map['architecture'] == null ? null : pulumi.Output.create<ImageArchitectureComputeV1>(ImageArchitectureComputeV1.fromValue(map['architecture'] as String)),
      archiveSizeBytes: map['archiveSizeBytes'] == null ? null : pulumi.Output.create<String>(map['archiveSizeBytes'] as String),
      deprecated: map['deprecated'] == null ? null : pulumi.Output.create<DeprecationStatusComputeV1>(DeprecationStatusComputeV1.fromMap((map['deprecated'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskSizeGb: map['diskSizeGb'] == null ? null : pulumi.Output.create<String>(map['diskSizeGb'] as String),
      family: map['family'] == null ? null : pulumi.Output.create<String>(map['family'] as String),
      forceCreate: map['forceCreate'] == null ? null : pulumi.Output.create<bool>(map['forceCreate'] as bool),
      guestOsFeatures: map['guestOsFeatures'] == null ? null : pulumi.Output.create<List<GuestOsFeatureComputeV1>>(pulumi.Input.decodeList<GuestOsFeatureComputeV1>(map['guestOsFeatures'], (value) => GuestOsFeatureComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      imageEncryptionKey: map['imageEncryptionKey'] == null ? null : pulumi.Output.create<CustomerEncryptionKeyComputeV1>(CustomerEncryptionKeyComputeV1.fromMap((map['imageEncryptionKey'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      licenseCodes: map['licenseCodes'] == null ? null : pulumi.Output.create<List<String>>((map['licenseCodes'] as List).cast<String>()),
      licenses: map['licenses'] == null ? null : pulumi.Output.create<List<String>>((map['licenses'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rawDisk: map['rawDisk'] == null ? null : pulumi.Output.create<ImageRawDiskComputeV1>(ImageRawDiskComputeV1.fromMap((map['rawDisk'] as Map).cast<String, dynamic>())),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      shieldedInstanceInitialState: map['shieldedInstanceInitialState'] == null ? null : pulumi.Output.create<InitialStateConfigComputeV1>(InitialStateConfigComputeV1.fromMap((map['shieldedInstanceInitialState'] as Map).cast<String, dynamic>())),
      sourceDisk: map['sourceDisk'] == null ? null : pulumi.Output.create<String>(map['sourceDisk'] as String),
      sourceDiskEncryptionKey: map['sourceDiskEncryptionKey'] == null ? null : pulumi.Output.create<CustomerEncryptionKeyComputeV1>(CustomerEncryptionKeyComputeV1.fromMap((map['sourceDiskEncryptionKey'] as Map).cast<String, dynamic>())),
      sourceImage: map['sourceImage'] == null ? null : pulumi.Output.create<String>(map['sourceImage'] as String),
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null ? null : pulumi.Output.create<CustomerEncryptionKeyComputeV1>(CustomerEncryptionKeyComputeV1.fromMap((map['sourceImageEncryptionKey'] as Map).cast<String, dynamic>())),
      sourceSnapshot: map['sourceSnapshot'] == null ? null : pulumi.Output.create<String>(map['sourceSnapshot'] as String),
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null ? null : pulumi.Output.create<CustomerEncryptionKeyComputeV1>(CustomerEncryptionKeyComputeV1.fromMap((map['sourceSnapshotEncryptionKey'] as Map).cast<String, dynamic>())),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<ImageSourceTypeComputeV1>(ImageSourceTypeComputeV1.fromValue(map['sourceType'] as String)),
      storageLocations: map['storageLocations'] == null ? null : pulumi.Output.create<List<String>>((map['storageLocations'] as List).cast<String>()),
    );
  }
}

