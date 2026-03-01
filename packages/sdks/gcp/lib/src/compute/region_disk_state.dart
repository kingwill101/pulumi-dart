// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_disk_async_primary_disk.dart';
import 'region_disk_disk_encryption_key.dart';
import 'region_disk_guest_os_feature.dart';
import 'region_disk_source_snapshot_encryption_key.dart';

/// Input properties used for looking up and filtering RegionDisk resources.
class RegionDiskState {
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
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
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
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String>? diskId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable disks.
  /// Structure is documented below.
  final pulumi.Input<List<RegionDiskGuestOsFeature>>? guestOsFeatures;
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  ///
  /// > **Warning:** `interface` is deprecated and will be removed in a future major release. This field is no longer used and can be safely removed from your configurations; disk interfaces are automatically determined on attachment.
  final pulumi.Input<String>? interface;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String>? labelFingerprint;
  /// Labels to apply to this disk.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Last attach timestamp in RFC3339 text format.
  final pulumi.Input<String>? lastAttachTimestamp;
  /// Last detach timestamp in RFC3339 text format.
  final pulumi.Input<String>? lastDetachTimestamp;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// A reference to the region where the disk resides.
  final pulumi.Input<String>? region;
  /// URLs of the zones where the disk should be replicated to.
  final pulumi.Input<List<String>>? replicaZones;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
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
  /// The ID value of the disk used to create this image. This value may
  /// be used to determine whether the image was taken from the current
  /// or a previous instance of a given disk name.
  final pulumi.Input<String>? sourceDiskId;
  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  final pulumi.Input<RegionDiskSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKey;
  /// The unique ID of the snapshot used to create this disk. This value
  /// identifies the exact snapshot that was used to create this persistent
  /// disk. For example, if you created the persistent disk from a snapshot
  /// that was later deleted and recreated under the same name, the source
  /// snapshot ID would identify the exact version of the snapshot that was
  /// used.
  final pulumi.Input<String>? sourceSnapshotId;
  /// URL of the disk type resource describing which disk type to use to
  /// create the disk. Provide this when creating the disk.
  final pulumi.Input<String>? type;
  /// Links to the users of the disk (attached instances) in form:
  /// project/zones/zone/instances/instance
  final pulumi.Input<List<String>>? users;

  /// Creates a new [RegionDiskState].
  /// [accessMode] The access mode of the disk.
  /// [asyncPrimaryDisk] A nested object resource.
  /// [createSnapshotBeforeDestroy] If set to true, a snapshot of the disk will be created before it is destroyed.
  /// [createSnapshotBeforeDestroyPrefix] This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when
  /// [diskEncryptionKey] Encrypts the disk using a customer-supplied encryption key.
  /// [diskId] The unique identifier for the resource. This identifier is defined by the server.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [guestOsFeatures] A list of features to enable on the guest operating system.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels to apply to this disk.  A list of key->value pairs.
  /// [lastAttachTimestamp] Last attach timestamp in RFC3339 text format.
  /// [lastDetachTimestamp] Last detach timestamp in RFC3339 text format.
  /// [licenses] Any applicable license URI.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [physicalBlockSizeBytes] Physical block size of the persistent disk, in bytes. If not present
  /// [project] The ID of the project in which the resource belongs.
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] A reference to the region where the disk resides.
  /// [replicaZones] URLs of the zones where the disk should be replicated to.
  /// [selfLink] The URI of the created resource.
  /// [size] Size of the persistent disk, specified in GB. You can specify this
  /// [snapshot] The source snapshot used to create this disk. You can provide this as
  /// [sourceDisk] The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
  /// [sourceDiskId] The ID value of the disk used to create this image. This value may
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot. Required
  /// [sourceSnapshotId] The unique ID of the snapshot used to create this disk. This value
  /// [type] URL of the disk type resource describing which disk type to use to
  /// [users] Links to the users of the disk (attached instances) in form:
  RegionDiskState({
    pulumi.Output<String>? accessMode,
    pulumi.Output<RegionDiskAsyncPrimaryDisk>? asyncPrimaryDisk,
    pulumi.Output<bool>? createSnapshotBeforeDestroy,
    pulumi.Output<String>? createSnapshotBeforeDestroyPrefix,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<RegionDiskDiskEncryptionKey>? diskEncryptionKey,
    pulumi.Output<String>? diskId,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<List<RegionDiskGuestOsFeature>>? guestOsFeatures,
    pulumi.Output<String>? interface,
    pulumi.Output<String>? labelFingerprint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? lastAttachTimestamp,
    pulumi.Output<String>? lastDetachTimestamp,
    pulumi.Output<List<String>>? licenses,
    pulumi.Output<String>? name,
    pulumi.Output<int>? physicalBlockSizeBytes,
    pulumi.Output<String>? project,
    pulumi.Output<int>? provisionedIops,
    pulumi.Output<int>? provisionedThroughput,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? replicaZones,
    pulumi.Output<String>? selfLink,
    pulumi.Output<int>? size,
    pulumi.Output<String>? snapshot,
    pulumi.Output<String>? sourceDisk,
    pulumi.Output<String>? sourceDiskId,
    pulumi.Output<RegionDiskSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKey,
    pulumi.Output<String>? sourceSnapshotId,
    pulumi.Output<String>? type,
    pulumi.Output<List<String>>? users,
  }) :
      accessMode = pulumi.Input.asOptionalInput<String>(accessMode),
      asyncPrimaryDisk = pulumi.Input.asOptionalInput<RegionDiskAsyncPrimaryDisk>(asyncPrimaryDisk),
      createSnapshotBeforeDestroy = pulumi.Input.asOptionalInput<bool>(createSnapshotBeforeDestroy),
      createSnapshotBeforeDestroyPrefix = pulumi.Input.asOptionalInput<String>(createSnapshotBeforeDestroyPrefix),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskEncryptionKey = pulumi.Input.asOptionalInput<RegionDiskDiskEncryptionKey>(diskEncryptionKey),
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      guestOsFeatures = pulumi.Input.asOptionalInput<List<RegionDiskGuestOsFeature>>(guestOsFeatures),
      interface = pulumi.Input.asOptionalInput<String>(interface),
      labelFingerprint = pulumi.Input.asOptionalInput<String>(labelFingerprint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lastAttachTimestamp = pulumi.Input.asOptionalInput<String>(lastAttachTimestamp),
      lastDetachTimestamp = pulumi.Input.asOptionalInput<String>(lastDetachTimestamp),
      licenses = pulumi.Input.asOptionalInput<List<String>>(licenses),
      name = pulumi.Input.asOptionalInput<String>(name),
      physicalBlockSizeBytes = pulumi.Input.asOptionalInput<int>(physicalBlockSizeBytes),
      project = pulumi.Input.asOptionalInput<String>(project),
      provisionedIops = pulumi.Input.asOptionalInput<int>(provisionedIops),
      provisionedThroughput = pulumi.Input.asOptionalInput<int>(provisionedThroughput),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicaZones = pulumi.Input.asOptionalInput<List<String>>(replicaZones),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      size = pulumi.Input.asOptionalInput<int>(size),
      snapshot = pulumi.Input.asOptionalInput<String>(snapshot),
      sourceDisk = pulumi.Input.asOptionalInput<String>(sourceDisk),
      sourceDiskId = pulumi.Input.asOptionalInput<String>(sourceDiskId),
      sourceSnapshotEncryptionKey = pulumi.Input.asOptionalInput<RegionDiskSourceSnapshotEncryptionKey>(sourceSnapshotEncryptionKey),
      sourceSnapshotId = pulumi.Input.asOptionalInput<String>(sourceSnapshotId),
      type = pulumi.Input.asOptionalInput<String>(type),
      users = pulumi.Input.asOptionalInput<List<String>>(users);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'asyncPrimaryDisk': ?pulumi.Input.mapOptionalInputValue<RegionDiskAsyncPrimaryDisk, Map<String, dynamic>>(asyncPrimaryDisk, (value) => value.toMap()),
      'createSnapshotBeforeDestroy': ?createSnapshotBeforeDestroy,
      'createSnapshotBeforeDestroyPrefix': ?createSnapshotBeforeDestroyPrefix,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RegionDiskDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'diskId': ?diskId,
      'effectiveLabels': ?effectiveLabels,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<RegionDiskGuestOsFeature>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<RegionDiskGuestOsFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interface': ?interface,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'lastAttachTimestamp': ?lastAttachTimestamp,
      'lastDetachTimestamp': ?lastDetachTimestamp,
      'licenses': ?licenses,
      'name': ?name,
      'physicalBlockSizeBytes': ?physicalBlockSizeBytes,
      'project': ?project,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'replicaZones': ?replicaZones,
      'selfLink': ?selfLink,
      'size': ?size,
      'snapshot': ?snapshot,
      'sourceDisk': ?sourceDisk,
      'sourceDiskId': ?sourceDiskId,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RegionDiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'sourceSnapshotId': ?sourceSnapshotId,
      'type': ?type,
      'users': ?users,
    };
  }

  factory RegionDiskState.fromMap(Map<String, dynamic> map) {
    return RegionDiskState(
      accessMode: map['accessMode'] == null ? null : pulumi.Output.create<String>(map['accessMode'] as String),
      asyncPrimaryDisk: map['asyncPrimaryDisk'] == null ? null : pulumi.Output.create<RegionDiskAsyncPrimaryDisk>(RegionDiskAsyncPrimaryDisk.fromMap((map['asyncPrimaryDisk'] as Map).cast<String, dynamic>())),
      createSnapshotBeforeDestroy: map['createSnapshotBeforeDestroy'] == null ? null : pulumi.Output.create<bool>(map['createSnapshotBeforeDestroy'] as bool),
      createSnapshotBeforeDestroyPrefix: map['createSnapshotBeforeDestroyPrefix'] == null ? null : pulumi.Output.create<String>(map['createSnapshotBeforeDestroyPrefix'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : pulumi.Output.create<RegionDiskDiskEncryptionKey>(RegionDiskDiskEncryptionKey.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>())),
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      guestOsFeatures: map['guestOsFeatures'] == null ? null : pulumi.Output.create<List<RegionDiskGuestOsFeature>>(pulumi.Input.decodeList<RegionDiskGuestOsFeature>(map['guestOsFeatures'], (value) => RegionDiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>()))),
      interface: map['interface'] == null ? null : pulumi.Output.create<String>(map['interface'] as String),
      labelFingerprint: map['labelFingerprint'] == null ? null : pulumi.Output.create<String>(map['labelFingerprint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lastAttachTimestamp: map['lastAttachTimestamp'] == null ? null : pulumi.Output.create<String>(map['lastAttachTimestamp'] as String),
      lastDetachTimestamp: map['lastDetachTimestamp'] == null ? null : pulumi.Output.create<String>(map['lastDetachTimestamp'] as String),
      licenses: map['licenses'] == null ? null : pulumi.Output.create<List<String>>((map['licenses'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      physicalBlockSizeBytes: map['physicalBlockSizeBytes'] == null ? null : pulumi.Output.create<int>(map['physicalBlockSizeBytes'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      provisionedIops: map['provisionedIops'] == null ? null : pulumi.Output.create<int>(map['provisionedIops'] as int),
      provisionedThroughput: map['provisionedThroughput'] == null ? null : pulumi.Output.create<int>(map['provisionedThroughput'] as int),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicaZones: map['replicaZones'] == null ? null : pulumi.Output.create<List<String>>((map['replicaZones'] as List).cast<String>()),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      snapshot: map['snapshot'] == null ? null : pulumi.Output.create<String>(map['snapshot'] as String),
      sourceDisk: map['sourceDisk'] == null ? null : pulumi.Output.create<String>(map['sourceDisk'] as String),
      sourceDiskId: map['sourceDiskId'] == null ? null : pulumi.Output.create<String>(map['sourceDiskId'] as String),
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null ? null : pulumi.Output.create<RegionDiskSourceSnapshotEncryptionKey>(RegionDiskSourceSnapshotEncryptionKey.fromMap((map['sourceSnapshotEncryptionKey'] as Map).cast<String, dynamic>())),
      sourceSnapshotId: map['sourceSnapshotId'] == null ? null : pulumi.Output.create<String>(map['sourceSnapshotId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      users: map['users'] == null ? null : pulumi.Output.create<List<String>>((map['users'] as List).cast<String>()),
    );
  }
}

