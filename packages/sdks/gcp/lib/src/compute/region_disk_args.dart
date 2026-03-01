// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_disk_async_primary_disk.dart';
import 'region_disk_disk_encryption_key.dart';
import 'region_disk_guest_os_feature.dart';
import 'region_disk_source_snapshot_encryption_key.dart';

/// {@template pulumi_compute_region_disk_region_disk_args_doc}
/// The set of arguments for RegionDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_region_disk_region_disk_args_doc}
class RegionDiskArgs {
  /// The access mode of the disk.
  /// For example:
  /// * READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode.
  /// * READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode.
  /// * READ_ONLY_SINGLE: The AccessMode means the disk can be attached to multiple instances in RO mode.
  /// The AccessMode is only valid for Hyperdisk disk types.
  final pulumi.Input<String>? accessMode;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionDiskAsyncPrimaryDisk>? asyncPrimaryDisk;
  /// If set to true, a snapshot of the disk will be created before it is destroyed.
  /// If your disk is encrypted with customer managed encryption keys these will be reused for the snapshot creation.
  /// The name of the snapshot by default will be `{{disk-name}}-YYYYMMDD-HHmm`
  final pulumi.Input<bool>? createSnapshotBeforeDestroy;
  /// This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  final pulumi.Input<String>? createSnapshotBeforeDestroyPrefix;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// Encrypts the disk using a customer-supplied encryption key.
  /// After you encrypt a disk with a customer-supplied key, you must
  /// provide the same key if you use the disk later (e.g. to create a disk
  /// snapshot or an image, or to attach the disk to a virtual machine).
  /// Customer-supplied encryption keys do not protect access to metadata of
  /// the disk.
  /// If you do not provide an encryption key when creating the disk, then
  /// the disk will be encrypted using an automatically generated key and
  /// you do not need to provide a key to use the disk later.
  /// Structure is documented below.
  final pulumi.Input<RegionDiskDiskEncryptionKey>? diskEncryptionKey;
  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable disks.
  /// Structure is documented below.
  final pulumi.Input<List<RegionDiskGuestOsFeature>>? guestOsFeatures;
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  ///
  /// > **Warning:** `interface` is deprecated and will be removed in a future major release. This field is no longer used and can be safely removed from your configurations; disk interfaces are automatically determined on attachment.
  final pulumi.Input<String>? interface;
  /// Labels to apply to this disk.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Any applicable license URI.
  final pulumi.Input<List<String>>? licenses;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Physical block size of the persistent disk, in bytes. If not present
  /// in a request, a default value is used. Currently supported sizes
  /// are 4096 and 16384, other sizes may be added in the future.
  /// If an unsupported value is requested, the error message will list
  /// the supported values for the caller's project.
  final pulumi.Input<int>? physicalBlockSizeBytes;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second
  /// that the disk can handle. Values must be between 10,000 and 120,000.
  /// For more details, see the Extreme persistent disk [documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk).
  final pulumi.Input<int>? provisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput
  /// mb per second that the disk can handle. Values must be greater than or equal to 1.
  final pulumi.Input<int>? provisionedThroughput;
  /// A reference to the region where the disk resides.
  final pulumi.Input<String>? region;
  /// URLs of the zones where the disk should be replicated to.
  final pulumi.Input<List<String>> replicaZones;
  /// Size of the persistent disk, specified in GB. You can specify this
  /// field when creating a persistent disk using the sourceImage or
  /// sourceSnapshot parameter, or specify it alone to create an empty
  /// persistent disk.
  /// If you specify this field along with sourceImage or sourceSnapshot,
  /// the value of sizeGb must not be less than the size of the sourceImage
  /// or the size of the snapshot.
  final pulumi.Input<int>? size;
  /// The source snapshot used to create this disk. You can provide this as
  /// a partial or full URL to the resource. For example, the following are
  /// valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot`
  /// * `projects/project/global/snapshots/snapshot`
  /// * `global/snapshots/snapshot`
  final pulumi.Input<String>? snapshot;
  /// The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
  /// For example, the following are valid values:
  /// * https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}
  /// * https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}
  /// * projects/{project}/zones/{zone}/disks/{disk}
  /// * projects/{project}/regions/{region}/disks/{disk}
  /// * zones/{zone}/disks/{disk}
  /// * regions/{region}/disks/{disk}
  final pulumi.Input<String>? sourceDisk;
  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  final pulumi.Input<RegionDiskSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKey;
  /// URL of the disk type resource describing which disk type to use to
  /// create the disk. Provide this when creating the disk.
  final pulumi.Input<String>? type;

  /// Creates a new [RegionDiskArgs].
  /// [accessMode] The access mode of the disk.
  /// [asyncPrimaryDisk] A nested object resource.
  /// [createSnapshotBeforeDestroy] If set to true, a snapshot of the disk will be created before it is destroyed.
  /// [createSnapshotBeforeDestroyPrefix] This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  /// [description] An optional description of this resource. Provide this property when
  /// [diskEncryptionKey] Encrypts the disk using a customer-supplied encryption key.
  /// [guestOsFeatures] A list of features to enable on the guest operating system.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  /// [labels] Labels to apply to this disk.  A list of key->value pairs.
  /// [licenses] Any applicable license URI.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [physicalBlockSizeBytes] Physical block size of the persistent disk, in bytes. If not present
  /// [project] The ID of the project in which the resource belongs.
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput
  /// [region] A reference to the region where the disk resides.
  /// [replicaZones] URLs of the zones where the disk should be replicated to.
  /// [size] Size of the persistent disk, specified in GB. You can specify this
  /// [snapshot] The source snapshot used to create this disk. You can provide this as
  /// [sourceDisk] The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot. Required
  /// [type] URL of the disk type resource describing which disk type to use to
  RegionDiskArgs({
    pulumi.Output<String>? accessMode,
    pulumi.Output<RegionDiskAsyncPrimaryDisk>? asyncPrimaryDisk,
    pulumi.Output<bool>? createSnapshotBeforeDestroy,
    pulumi.Output<String>? createSnapshotBeforeDestroyPrefix,
    pulumi.Output<String>? description,
    pulumi.Output<RegionDiskDiskEncryptionKey>? diskEncryptionKey,
    pulumi.Output<List<RegionDiskGuestOsFeature>>? guestOsFeatures,
    pulumi.Output<String>? interface,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<String>>? licenses,
    pulumi.Output<String>? name,
    pulumi.Output<int>? physicalBlockSizeBytes,
    pulumi.Output<String>? project,
    pulumi.Output<int>? provisionedIops,
    pulumi.Output<int>? provisionedThroughput,
    pulumi.Output<String>? region,
    required pulumi.Output<List<String>> replicaZones,
    pulumi.Output<int>? size,
    pulumi.Output<String>? snapshot,
    pulumi.Output<String>? sourceDisk,
    pulumi.Output<RegionDiskSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKey,
    pulumi.Output<String>? type,
  }) :
      accessMode = pulumi.Input.asOptionalInput<String>(accessMode),
      asyncPrimaryDisk = pulumi.Input.asOptionalInput<RegionDiskAsyncPrimaryDisk>(asyncPrimaryDisk),
      createSnapshotBeforeDestroy = pulumi.Input.asOptionalInput<bool>(createSnapshotBeforeDestroy),
      createSnapshotBeforeDestroyPrefix = pulumi.Input.asOptionalInput<String>(createSnapshotBeforeDestroyPrefix),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskEncryptionKey = pulumi.Input.asOptionalInput<RegionDiskDiskEncryptionKey>(diskEncryptionKey),
      guestOsFeatures = pulumi.Input.asOptionalInput<List<RegionDiskGuestOsFeature>>(guestOsFeatures),
      interface = pulumi.Input.asOptionalInput<String>(interface),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      licenses = pulumi.Input.asOptionalInput<List<String>>(licenses),
      name = pulumi.Input.asOptionalInput<String>(name),
      physicalBlockSizeBytes = pulumi.Input.asOptionalInput<int>(physicalBlockSizeBytes),
      project = pulumi.Input.asOptionalInput<String>(project),
      provisionedIops = pulumi.Input.asOptionalInput<int>(provisionedIops),
      provisionedThroughput = pulumi.Input.asOptionalInput<int>(provisionedThroughput),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicaZones = pulumi.Input.asInput<List<String>>(replicaZones),
      size = pulumi.Input.asOptionalInput<int>(size),
      snapshot = pulumi.Input.asOptionalInput<String>(snapshot),
      sourceDisk = pulumi.Input.asOptionalInput<String>(sourceDisk),
      sourceSnapshotEncryptionKey = pulumi.Input.asOptionalInput<RegionDiskSourceSnapshotEncryptionKey>(sourceSnapshotEncryptionKey),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'asyncPrimaryDisk': ?pulumi.Input.mapOptionalInputValue<RegionDiskAsyncPrimaryDisk, Map<String, dynamic>>(asyncPrimaryDisk, (value) => value.toMap()),
      'createSnapshotBeforeDestroy': ?createSnapshotBeforeDestroy,
      'createSnapshotBeforeDestroyPrefix': ?createSnapshotBeforeDestroyPrefix,
      'description': ?description,
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RegionDiskDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<RegionDiskGuestOsFeature>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<RegionDiskGuestOsFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interface': ?interface,
      'labels': ?labels,
      'licenses': ?licenses,
      'name': ?name,
      'physicalBlockSizeBytes': ?physicalBlockSizeBytes,
      'project': ?project,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'region': ?region,
      'replicaZones': replicaZones,
      'size': ?size,
      'snapshot': ?snapshot,
      'sourceDisk': ?sourceDisk,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RegionDiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory RegionDiskArgs.fromMap(Map<String, dynamic> map) {
    return RegionDiskArgs(
      accessMode: map['accessMode'] == null ? null : pulumi.Output.create<String>(map['accessMode'] as String),
      asyncPrimaryDisk: map['asyncPrimaryDisk'] == null ? null : pulumi.Output.create<RegionDiskAsyncPrimaryDisk>(RegionDiskAsyncPrimaryDisk.fromMap((map['asyncPrimaryDisk'] as Map).cast<String, dynamic>())),
      createSnapshotBeforeDestroy: map['createSnapshotBeforeDestroy'] == null ? null : pulumi.Output.create<bool>(map['createSnapshotBeforeDestroy'] as bool),
      createSnapshotBeforeDestroyPrefix: map['createSnapshotBeforeDestroyPrefix'] == null ? null : pulumi.Output.create<String>(map['createSnapshotBeforeDestroyPrefix'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : pulumi.Output.create<RegionDiskDiskEncryptionKey>(RegionDiskDiskEncryptionKey.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>())),
      guestOsFeatures: map['guestOsFeatures'] == null ? null : pulumi.Output.create<List<RegionDiskGuestOsFeature>>(pulumi.Input.decodeList<RegionDiskGuestOsFeature>(map['guestOsFeatures'], (value) => RegionDiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>()))),
      interface: map['interface'] == null ? null : pulumi.Output.create<String>(map['interface'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      licenses: map['licenses'] == null ? null : pulumi.Output.create<List<String>>((map['licenses'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      physicalBlockSizeBytes: map['physicalBlockSizeBytes'] == null ? null : pulumi.Output.create<int>(map['physicalBlockSizeBytes'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      provisionedIops: map['provisionedIops'] == null ? null : pulumi.Output.create<int>(map['provisionedIops'] as int),
      provisionedThroughput: map['provisionedThroughput'] == null ? null : pulumi.Output.create<int>(map['provisionedThroughput'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicaZones: pulumi.Output.create<List<String>>((map['replicaZones'] as List).cast<String>()),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      snapshot: map['snapshot'] == null ? null : pulumi.Output.create<String>(map['snapshot'] as String),
      sourceDisk: map['sourceDisk'] == null ? null : pulumi.Output.create<String>(map['sourceDisk'] as String),
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null ? null : pulumi.Output.create<RegionDiskSourceSnapshotEncryptionKey>(RegionDiskSourceSnapshotEncryptionKey.fromMap((map['sourceSnapshotEncryptionKey'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

