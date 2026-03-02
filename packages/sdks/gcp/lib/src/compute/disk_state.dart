// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_async_primary_disk.dart';
import 'disk_disk_encryption_key.dart';
import 'disk_guest_os_feature.dart';
import 'disk_params.dart';
import 'disk_source_image_encryption_key.dart';
import 'disk_source_snapshot_encryption_key.dart';

/// Input properties used for looking up and filtering Disk resources.
class DiskState {
  /// The access mode of the disk.
  /// For example:
  /// * READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode.
  /// * READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode.
  /// * READ_ONLY_SINGLE: The AccessMode means the disk can be attached to multiple instances in RO mode.
  /// The AccessMode is only valid for Hyperdisk disk types.
  final pulumi.Input<String>? accessMode;
  /// The architecture of the disk. Values include `X86_64`, `ARM64`.
  final pulumi.Input<String>? architecture;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DiskAsyncPrimaryDisk>? asyncPrimaryDisk;
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
  final pulumi.Input<DiskDiskEncryptionKey>? diskEncryptionKey;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String>? diskId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Whether this disk is using confidential compute mode.
  /// Note: Only supported on hyperdisk skus, disk_encryption_key is required when setting to true
  final pulumi.Input<bool>? enableConfidentialCompute;
  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable disks.
  /// Structure is documented below.
  final pulumi.Input<List<DiskGuestOsFeature>>? guestOsFeatures;
  /// The image from which to initialize this disk. This can be
  /// one of: the image's `self_link`, `projects/{project}/global/images/{image}`,
  /// `projects/{project}/global/images/family/{family}`, `global/images/{image}`,
  /// `global/images/family/{family}`, `family/{family}`, `{project}/{family}`,
  /// `{project}/{image}`, `{family}`, or `{image}`. If referred by family, the
  /// images names must include the family name. If they don't, use the
  /// [gcp.compute.Image data source](https://www.terraform.io/docs/providers/google/d/compute_image.html).
  /// For instance, the image `centos-6-v20180104` includes its family name `centos-6`.
  /// These images can be referred by family name here.
  final pulumi.Input<String>? image;
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
  /// Indicates whether or not the disk can be read/write attached to more than one instance.
  final pulumi.Input<bool>? multiWriter;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<DiskParams>? params;
  /// Physical block size of the persistent disk, in bytes. If not present
  /// in a request, a default value is used. Currently supported sizes
  /// are 4096 and 16384, other sizes may be added in the future.
  /// If an unsupported value is requested, the error message will list
  /// the supported values for the caller's project.
  final pulumi.Input<int>? physicalBlockSizeBytes;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Indicates how many IOPS must be provisioned for the disk.
  /// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
  /// allows for an update of IOPS every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
  final pulumi.Input<int>? provisionedIops;
  /// Indicates how much Throughput must be provisioned for the disk.
  /// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
  /// allows for an update of Throughput every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
  final pulumi.Input<int>? provisionedThroughput;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Resource policies applied to this disk for automatic snapshot creations.
  /// ~>**NOTE** This value does not support updating the
  /// resource policy, as resource policies can not be updated more than
  /// one at a time. Use
  /// `gcp.compute.DiskResourcePolicyAttachment`
  /// to allow for updating the resource policy attached to the disk.
  final pulumi.Input<List<String>>? resourcePolicies;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Size of the persistent disk, specified in GB. You can specify this
  /// field when creating a persistent disk using the `image` or
  /// `snapshot` parameter, or specify it alone to create an empty
  /// persistent disk.
  /// If you specify this field along with `image` or `snapshot`,
  /// the value must not be less than the size of the image
  /// or the size of the snapshot.
  /// ~>**NOTE** If you change the size, the provider updates the disk size
  /// if upsizing is detected but recreates the disk if downsizing is requested.
  /// You can add `lifecycle.prevent_destroy` in the config to prevent destroying
  /// and recreating.
  final pulumi.Input<int>? size;
  /// The source snapshot used to create this disk. You can provide this as
  /// a partial or full URL to the resource. If the snapshot is in another
  /// project than this disk, you must supply a full URL. For example, the
  /// following are valid values:
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
  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final pulumi.Input<DiskSourceImageEncryptionKey>? sourceImageEncryptionKey;
  /// The ID value of the image used to create this disk. This value
  /// identifies the exact image that was used to create this persistent
  /// disk. For example, if you created the persistent disk from an image
  /// that was later deleted and recreated under the same name, the source
  /// image ID would identify the exact version of the image that was used.
  final pulumi.Input<String>? sourceImageId;
  /// The source instant snapshot used to create this disk. You can provide this as a partial or full URL to the resource.
  /// For example, the following are valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/project/zones/zone/instantSnapshots/instantSnapshot`
  /// * `projects/project/zones/zone/instantSnapshots/instantSnapshot`
  /// * `zones/zone/instantSnapshots/instantSnapshot`
  final pulumi.Input<String>? sourceInstantSnapshot;
  /// The unique ID of the instant snapshot used to create this disk. This value identifies
  /// the exact instant snapshot that was used to create this persistent disk.
  /// For example, if you created the persistent disk from an instant snapshot that was later
  /// deleted and recreated under the same name, the source instant snapshot ID would identify
  /// the exact version of the instant snapshot that was used.
  final pulumi.Input<String>? sourceInstantSnapshotId;
  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  final pulumi.Input<DiskSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKey;
  /// The unique ID of the snapshot used to create this disk. This value
  /// identifies the exact snapshot that was used to create this persistent
  /// disk. For example, if you created the persistent disk from a snapshot
  /// that was later deleted and recreated under the same name, the source
  /// snapshot ID would identify the exact version of the snapshot that was
  /// used.
  final pulumi.Input<String>? sourceSnapshotId;
  /// The full Google Cloud Storage URI where the disk image is stored.
  /// This file must be a gzip-compressed tarball whose name ends in .tar.gz or virtual machine disk whose name ends in vmdk.
  /// Valid URIs may start with gs:// or https://storage.googleapis.com/.
  /// This flag is not optimized for creating multiple disks from a source storage object.
  /// To create many disks from a source storage object, use gcloud compute images import instead.
  final pulumi.Input<String>? sourceStorageObject;
  /// The URL or the name of the storage pool in which the new disk is created.
  /// For example:
  /// * https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/storagePools/{storagePool}
  /// * /projects/{project}/zones/{zone}/storagePools/{storagePool}
  /// * /zones/{zone}/storagePools/{storagePool}
  /// * /{storagePool}
  final pulumi.Input<String>? storagePool;
  /// URL of the disk type resource describing which disk type to use to
  /// create the disk. Provide this when creating the disk.
  final pulumi.Input<String>? type;
  /// Links to the users of the disk (attached instances) in form:
  /// project/zones/zone/instances/instance
  final pulumi.Input<List<String>>? users;
  /// A reference to the zone where the disk resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [DiskState].
  /// [accessMode] The access mode of the disk.
  /// [architecture] The architecture of the disk. Values include `X86_64`, `ARM64`.
  /// [asyncPrimaryDisk] A nested object resource.
  /// [createSnapshotBeforeDestroy] If set to true, a snapshot of the disk will be created before it is destroyed.
  /// [createSnapshotBeforeDestroyPrefix] This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when
  /// [diskEncryptionKey] Encrypts the disk using a customer-supplied encryption key.
  /// [diskId] The unique identifier for the resource. This identifier is defined by the server.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableConfidentialCompute] Whether this disk is using confidential compute mode.
  /// [guestOsFeatures] A list of features to enable on the guest operating system.
  /// [image] The image from which to initialize this disk. This can be
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels to apply to this disk.  A list of key->value pairs.
  /// [lastAttachTimestamp] Last attach timestamp in RFC3339 text format.
  /// [lastDetachTimestamp] Last detach timestamp in RFC3339 text format.
  /// [licenses] Any applicable license URI.
  /// [multiWriter] Indicates whether or not the disk can be read/write attached to more than one instance.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [physicalBlockSizeBytes] Physical block size of the persistent disk, in bytes. If not present
  /// [project] The ID of the project in which the resource belongs.
  /// [provisionedIops] Indicates how many IOPS must be provisioned for the disk.
  /// [provisionedThroughput] Indicates how much Throughput must be provisioned for the disk.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [resourcePolicies] Resource policies applied to this disk for automatic snapshot creations.
  /// [selfLink] The URI of the created resource.
  /// [size] Size of the persistent disk, specified in GB. You can specify this
  /// [snapshot] The source snapshot used to create this disk. You can provide this as
  /// [sourceDisk] The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
  /// [sourceDiskId] The ID value of the disk used to create this image. This value may
  /// [sourceImageEncryptionKey] The customer-supplied encryption key of the source image. Required if
  /// [sourceImageId] The ID value of the image used to create this disk. This value
  /// [sourceInstantSnapshot] The source instant snapshot used to create this disk. You can provide this as a partial or full URL to the resource.
  /// [sourceInstantSnapshotId] The unique ID of the instant snapshot used to create this disk. This value identifies
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot. Required
  /// [sourceSnapshotId] The unique ID of the snapshot used to create this disk. This value
  /// [sourceStorageObject] The full Google Cloud Storage URI where the disk image is stored.
  /// [storagePool] The URL or the name of the storage pool in which the new disk is created.
  /// [type] URL of the disk type resource describing which disk type to use to
  /// [users] Links to the users of the disk (attached instances) in form:
  /// [zone] A reference to the zone where the disk resides.
  DiskState({
    this.accessMode,
    this.architecture,
    this.asyncPrimaryDisk,
    this.createSnapshotBeforeDestroy,
    this.createSnapshotBeforeDestroyPrefix,
    this.creationTimestamp,
    this.description,
    this.diskEncryptionKey,
    this.diskId,
    this.effectiveLabels,
    this.enableConfidentialCompute,
    this.guestOsFeatures,
    this.image,
    this.interface,
    this.labelFingerprint,
    this.labels,
    this.lastAttachTimestamp,
    this.lastDetachTimestamp,
    this.licenses,
    this.multiWriter,
    this.name,
    this.params,
    this.physicalBlockSizeBytes,
    this.project,
    this.provisionedIops,
    this.provisionedThroughput,
    this.pulumiLabels,
    this.resourcePolicies,
    this.selfLink,
    this.size,
    this.snapshot,
    this.sourceDisk,
    this.sourceDiskId,
    this.sourceImageEncryptionKey,
    this.sourceImageId,
    this.sourceInstantSnapshot,
    this.sourceInstantSnapshotId,
    this.sourceSnapshotEncryptionKey,
    this.sourceSnapshotId,
    this.sourceStorageObject,
    this.storagePool,
    this.type,
    this.users,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'architecture': ?architecture,
      'asyncPrimaryDisk': ?pulumi.Input.mapOptionalInputValue<DiskAsyncPrimaryDisk, Map<String, dynamic>>(asyncPrimaryDisk, (value) => value.toMap()),
      'createSnapshotBeforeDestroy': ?createSnapshotBeforeDestroy,
      'createSnapshotBeforeDestroyPrefix': ?createSnapshotBeforeDestroyPrefix,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<DiskDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'diskId': ?diskId,
      'effectiveLabels': ?effectiveLabels,
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<DiskGuestOsFeature>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<DiskGuestOsFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'interface': ?interface,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'lastAttachTimestamp': ?lastAttachTimestamp,
      'lastDetachTimestamp': ?lastDetachTimestamp,
      'licenses': ?licenses,
      'multiWriter': ?multiWriter,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<DiskParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'physicalBlockSizeBytes': ?physicalBlockSizeBytes,
      'project': ?project,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'pulumiLabels': ?pulumiLabels,
      'resourcePolicies': ?resourcePolicies,
      'selfLink': ?selfLink,
      'size': ?size,
      'snapshot': ?snapshot,
      'sourceDisk': ?sourceDisk,
      'sourceDiskId': ?sourceDiskId,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<DiskSourceImageEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceImageId': ?sourceImageId,
      'sourceInstantSnapshot': ?sourceInstantSnapshot,
      'sourceInstantSnapshotId': ?sourceInstantSnapshotId,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<DiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'sourceSnapshotId': ?sourceSnapshotId,
      'sourceStorageObject': ?sourceStorageObject,
      'storagePool': ?storagePool,
      'type': ?type,
      'users': ?users,
      'zone': ?zone,
    };
  }

  factory DiskState.fromMap(Map<String, dynamic> map) {
    return DiskState(
      accessMode: map['accessMode'] == null ? null : (map['accessMode']! as String).input(),
      architecture: map['architecture'] == null ? null : (map['architecture']! as String).input(),
      asyncPrimaryDisk: map['asyncPrimaryDisk'] == null ? null : (DiskAsyncPrimaryDisk.fromMap((map['asyncPrimaryDisk']! as Map).cast<String, dynamic>())).input(),
      createSnapshotBeforeDestroy: map['createSnapshotBeforeDestroy'] == null ? null : (map['createSnapshotBeforeDestroy']! as bool).input(),
      createSnapshotBeforeDestroyPrefix: map['createSnapshotBeforeDestroyPrefix'] == null ? null : (map['createSnapshotBeforeDestroyPrefix']! as String).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : (DiskDiskEncryptionKey.fromMap((map['diskEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      diskId: map['diskId'] == null ? null : (map['diskId']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : (map['enableConfidentialCompute']! as bool).input(),
      guestOsFeatures: map['guestOsFeatures'] == null ? null : (pulumi.Input.decodeList<DiskGuestOsFeature>(map['guestOsFeatures']!, (value) => DiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      interface: map['interface'] == null ? null : (map['interface']! as String).input(),
      labelFingerprint: map['labelFingerprint'] == null ? null : (map['labelFingerprint']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      lastAttachTimestamp: map['lastAttachTimestamp'] == null ? null : (map['lastAttachTimestamp']! as String).input(),
      lastDetachTimestamp: map['lastDetachTimestamp'] == null ? null : (map['lastDetachTimestamp']! as String).input(),
      licenses: map['licenses'] == null ? null : ((map['licenses']! as List).cast<String>()).input(),
      multiWriter: map['multiWriter'] == null ? null : (map['multiWriter']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      params: map['params'] == null ? null : (DiskParams.fromMap((map['params']! as Map).cast<String, dynamic>())).input(),
      physicalBlockSizeBytes: map['physicalBlockSizeBytes'] == null ? null : (map['physicalBlockSizeBytes']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      provisionedIops: map['provisionedIops'] == null ? null : (map['provisionedIops']! as int).input(),
      provisionedThroughput: map['provisionedThroughput'] == null ? null : (map['provisionedThroughput']! as int).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      resourcePolicies: map['resourcePolicies'] == null ? null : ((map['resourcePolicies']! as List).cast<String>()).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      snapshot: map['snapshot'] == null ? null : (map['snapshot']! as String).input(),
      sourceDisk: map['sourceDisk'] == null ? null : (map['sourceDisk']! as String).input(),
      sourceDiskId: map['sourceDiskId'] == null ? null : (map['sourceDiskId']! as String).input(),
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null ? null : (DiskSourceImageEncryptionKey.fromMap((map['sourceImageEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      sourceImageId: map['sourceImageId'] == null ? null : (map['sourceImageId']! as String).input(),
      sourceInstantSnapshot: map['sourceInstantSnapshot'] == null ? null : (map['sourceInstantSnapshot']! as String).input(),
      sourceInstantSnapshotId: map['sourceInstantSnapshotId'] == null ? null : (map['sourceInstantSnapshotId']! as String).input(),
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null ? null : (DiskSourceSnapshotEncryptionKey.fromMap((map['sourceSnapshotEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      sourceSnapshotId: map['sourceSnapshotId'] == null ? null : (map['sourceSnapshotId']! as String).input(),
      sourceStorageObject: map['sourceStorageObject'] == null ? null : (map['sourceStorageObject']! as String).input(),
      storagePool: map['storagePool'] == null ? null : (map['storagePool']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      users: map['users'] == null ? null : ((map['users']! as List).cast<String>()).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

