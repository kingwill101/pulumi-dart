// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_disk_async_primary_disk.dart';
import 'region_disk_disk_encryption_key.dart';
import 'region_disk_guest_os_feature.dart';
import 'region_disk_source_image_encryption_key.dart';
import 'region_disk_source_snapshot_encryption_key.dart';

/// Input properties used for looking up and filtering RegionDisk resources.
class RegionDiskState {
  /// The access mode of the disk.
  /// For example:
  /// * READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode.
  /// * READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode.
  /// * READ_ONLY_SINGLE: The AccessMode means the disk can be attached to multiple instances in RO mode.
  /// The AccessMode is only valid for Hyperdisk disk types.
  final pulumi.Input<String?>? accessMode;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<RegionDiskAsyncPrimaryDisk?>? asyncPrimaryDisk;
  /// If set to true, a snapshot of the disk will be created before it is destroyed.
  /// If your disk is encrypted with customer managed encryption keys these will be reused for the snapshot creation.
  /// The name of the snapshot by default will be `{{disk-name}}-YYYYMMDD-HHmm`
  final pulumi.Input<bool?>? createSnapshotBeforeDestroy;
  /// This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  final pulumi.Input<String?>? createSnapshotBeforeDestroyPrefix;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
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
  final pulumi.Input<RegionDiskDiskEncryptionKey?>? diskEncryptionKey;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String?>? diskId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// (Optional, Beta)
  /// Specifies whether the disk restored from a source snapshot should erase Windows specific VSS signature.
  final pulumi.Input<bool?>? eraseWindowsVssSignature;
  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable disks.
  /// Structure is documented below.
  final pulumi.Input<List<RegionDiskGuestOsFeature>?>? guestOsFeatures;
  /// The image from which to initialize this disk. This can be
  /// one of: the image's `selfLink`, `projects/{project}/global/images/{image}`,
  /// `projects/{project}/global/images/family/{family}`, `global/images/{image}`,
  /// `global/images/family/{family}`, `family/{family}`, `{project}/{family}`,
  /// `{project}/{image}`, `{family}`, or `{image}`. If referred by family, the
  /// images names must include the family name. If they don't, use the
  /// [gcp.compute.Image data source](https://www.terraform.io/docs/providers/google/d/compute_image.html).
  /// For instance, the image `centos-6-v20180104` includes its family name `centos-6`.
  /// These images can be referred by family name here.
  final pulumi.Input<String?>? image;
  /// (Optional, Beta, Deprecated)
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  ///
  /// &gt; **Warning:** `interface` is deprecated and will be removed in a future major release. This field is no longer used and can be safely removed from your configurations; disk interfaces are automatically determined on attachment.
  final pulumi.Input<String?>? interface;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String?>? labelFingerprint;
  /// Labels to apply to this disk.  A list of key-&gt;value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Last attach timestamp in RFC3339 text format.
  final pulumi.Input<String?>? lastAttachTimestamp;
  /// Last detach timestamp in RFC3339 text format.
  final pulumi.Input<String?>? lastDetachTimestamp;
  /// Any applicable license URI.
  final pulumi.Input<List<String>?>? licenses;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// Physical block size of the persistent disk, in bytes. If not present
  /// in a request, a default value is used. Currently supported sizes
  /// are 4096 and 16384, other sizes may be added in the future.
  /// If an unsupported value is requested, the error message will list
  /// the supported values for the caller's project.
  final pulumi.Input<int?>? physicalBlockSizeBytes;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second
  /// that the disk can handle. Values must be between 10,000 and 120,000.
  /// For more details, see the Extreme persistent disk [documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk).
  final pulumi.Input<int?>? provisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput
  /// mb per second that the disk can handle. Values must be greater than or equal to 1.
  final pulumi.Input<int?>? provisionedThroughput;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// A reference to the region where the disk resides.
  final pulumi.Input<String?>? region;
  /// URLs of the zones where the disk should be replicated to.
  final pulumi.Input<List<String>?>? replicaZones;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;
  /// Size of the persistent disk, specified in GB. You can specify this
  /// field when creating a persistent disk using the sourceImage or
  /// sourceSnapshot parameter, or specify it alone to create an empty
  /// persistent disk.
  /// If you specify this field along with sourceImage or sourceSnapshot,
  /// the value of sizeGb must not be less than the size of the sourceImage
  /// or the size of the snapshot.
  final pulumi.Input<int?>? size;
  /// The source snapshot used to create this disk. You can provide this as
  /// a partial or full URL to the resource. For example, the following are
  /// valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot`
  /// * `projects/project/global/snapshots/snapshot`
  /// * `global/snapshots/snapshot`
  final pulumi.Input<String?>? snapshot;
  /// The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
  /// For example, the following are valid values:
  /// * https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}
  /// * https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}
  /// * projects/{project}/zones/{zone}/disks/{disk}
  /// * projects/{project}/regions/{region}/disks/{disk}
  /// * zones/{zone}/disks/{disk}
  /// * regions/{region}/disks/{disk}
  final pulumi.Input<String?>? sourceDisk;
  /// The ID value of the disk used to create this image. This value may
  /// be used to determine whether the image was taken from the current
  /// or a previous instance of a given disk name.
  final pulumi.Input<String?>? sourceDiskId;
  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final pulumi.Input<RegionDiskSourceImageEncryptionKey?>? sourceImageEncryptionKey;
  /// The ID value of the image used to create this disk. This value
  /// identifies the exact image that was used to create this persistent
  /// disk. For example, if you created the persistent disk from an image
  /// that was later deleted and recreated under the same name, the source
  /// image ID would identify the exact version of the image that was used.
  final pulumi.Input<String?>? sourceImageId;
  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  final pulumi.Input<RegionDiskSourceSnapshotEncryptionKey?>? sourceSnapshotEncryptionKey;
  /// The unique ID of the snapshot used to create this disk. This value
  /// identifies the exact snapshot that was used to create this persistent
  /// disk. For example, if you created the persistent disk from a snapshot
  /// that was later deleted and recreated under the same name, the source
  /// snapshot ID would identify the exact version of the snapshot that was
  /// used.
  final pulumi.Input<String?>? sourceSnapshotId;
  /// URL of the disk type resource describing which disk type to use to
  /// create the disk. Provide this when creating the disk.
  final pulumi.Input<String?>? type;
  /// Links to the users of the disk (attached instances) in form:
  /// project/zones/zone/instances/instance
  final pulumi.Input<List<String>?>? users;

  /// Creates a new [RegionDiskState].
  /// [accessMode] The access mode of the disk.
  /// [asyncPrimaryDisk] A nested object resource.
  /// [createSnapshotBeforeDestroy] If set to true, a snapshot of the disk will be created before it is destroyed.
  /// [createSnapshotBeforeDestroyPrefix] This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when
  /// [diskEncryptionKey] Encrypts the disk using a customer-supplied encryption key.
  /// [diskId] The unique identifier for the resource. This identifier is defined by the server.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [eraseWindowsVssSignature] (Optional, Beta)
  /// [guestOsFeatures] A list of features to enable on the guest operating system.
  /// [image] The image from which to initialize this disk. This can be
  /// [interface] (Optional, Beta, Deprecated)
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels to apply to this disk.  A list of key-&gt;value pairs.
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
  /// [sourceImageEncryptionKey] The customer-supplied encryption key of the source image. Required if
  /// [sourceImageId] The ID value of the image used to create this disk. This value
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot. Required
  /// [sourceSnapshotId] The unique ID of the snapshot used to create this disk. This value
  /// [type] URL of the disk type resource describing which disk type to use to
  /// [users] Links to the users of the disk (attached instances) in form:
  const RegionDiskState({
    this.accessMode,
    this.asyncPrimaryDisk,
    this.createSnapshotBeforeDestroy,
    this.createSnapshotBeforeDestroyPrefix,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.diskEncryptionKey,
    this.diskId,
    this.effectiveLabels,
    this.eraseWindowsVssSignature,
    this.guestOsFeatures,
    this.image,
    this.interface,
    this.labelFingerprint,
    this.labels,
    this.lastAttachTimestamp,
    this.lastDetachTimestamp,
    this.licenses,
    this.name,
    this.physicalBlockSizeBytes,
    this.project,
    this.provisionedIops,
    this.provisionedThroughput,
    this.pulumiLabels,
    this.region,
    this.replicaZones,
    this.selfLink,
    this.size,
    this.snapshot,
    this.sourceDisk,
    this.sourceDiskId,
    this.sourceImageEncryptionKey,
    this.sourceImageId,
    this.sourceSnapshotEncryptionKey,
    this.sourceSnapshotId,
    this.type,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'asyncPrimaryDisk': ?pulumi.Input.mapOptionalInputValue<RegionDiskAsyncPrimaryDisk, Map<String, dynamic>>(asyncPrimaryDisk, (value) => value.toMap()),
      'createSnapshotBeforeDestroy': ?createSnapshotBeforeDestroy,
      'createSnapshotBeforeDestroyPrefix': ?createSnapshotBeforeDestroyPrefix,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RegionDiskDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'diskId': ?diskId,
      'effectiveLabels': ?effectiveLabels,
      'eraseWindowsVssSignature': ?eraseWindowsVssSignature,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<RegionDiskGuestOsFeature>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<RegionDiskGuestOsFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
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
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RegionDiskSourceImageEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceImageId': ?sourceImageId,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RegionDiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'sourceSnapshotId': ?sourceSnapshotId,
      'type': ?type,
      'users': ?users,
    };
  }

  factory RegionDiskState.fromMap(Map<String, dynamic> map) {
    return RegionDiskState(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      asyncPrimaryDisk: (() { final guardedValue = map['asyncPrimaryDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionDiskAsyncPrimaryDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createSnapshotBeforeDestroy: (() { final guardedValue = map['createSnapshotBeforeDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createSnapshotBeforeDestroyPrefix: (() { final guardedValue = map['createSnapshotBeforeDestroyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionKey: (() { final guardedValue = map['diskEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionDiskDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      eraseWindowsVssSignature: (() { final guardedValue = map['eraseWindowsVssSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guestOsFeatures: (() { final guardedValue = map['guestOsFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionDiskGuestOsFeature>(guardedValue, (value) => RegionDiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lastAttachTimestamp: (() { final guardedValue = map['lastAttachTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastDetachTimestamp: (() { final guardedValue = map['lastDetachTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenses: (() { final guardedValue = map['licenses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      physicalBlockSizeBytes: (() { final guardedValue = map['physicalBlockSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaZones: (() { final guardedValue = map['replicaZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDisk: (() { final guardedValue = map['sourceDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDiskId: (() { final guardedValue = map['sourceDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageEncryptionKey: (() { final guardedValue = map['sourceImageEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionDiskSourceImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceImageId: (() { final guardedValue = map['sourceImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSnapshotEncryptionKey: (() { final guardedValue = map['sourceSnapshotEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionDiskSourceSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceSnapshotId: (() { final guardedValue = map['sourceSnapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
