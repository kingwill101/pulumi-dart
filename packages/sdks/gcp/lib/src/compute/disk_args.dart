// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_async_primary_disk.dart';
import 'disk_disk_encryption_key.dart';
import 'disk_guest_os_feature.dart';
import 'disk_params.dart';
import 'disk_source_image_encryption_key.dart';
import 'disk_source_snapshot_encryption_key.dart';

/// {@template pulumi_compute_disk_disk_args_doc}
/// The set of arguments for Disk.
/// {@endtemplate}
/// {@macro pulumi_compute_disk_disk_args_doc}
class DiskArgs {
  /// The access mode of the disk.
  /// For example:
  /// * READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode.
  /// * READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode.
  /// * READ_ONLY_SINGLE: The AccessMode means the disk can be attached to multiple instances in RO mode.
  /// The AccessMode is only valid for Hyperdisk disk types.
  final pulumi.Input<String?>? accessMode;
  /// The architecture of the disk. Values include `X86_64`, `ARM64`.
  final pulumi.Input<String?>? architecture;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DiskAsyncPrimaryDisk?>? asyncPrimaryDisk;
  /// If set to true, a snapshot of the disk will be created before it is destroyed.
  /// If your disk is encrypted with customer managed encryption keys these will be reused for the snapshot creation.
  /// The name of the snapshot by default will be `{{disk-name}}-YYYYMMDD-HHmm`
  final pulumi.Input<bool?>? createSnapshotBeforeDestroy;
  /// This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  final pulumi.Input<String?>? createSnapshotBeforeDestroyPrefix;
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
  final pulumi.Input<DiskDiskEncryptionKey?>? diskEncryptionKey;
  /// Whether this disk is using confidential compute mode.
  /// Note: Only supported on hyperdisk skus, diskEncryptionKey is required when setting to true
  final pulumi.Input<bool?>? enableConfidentialCompute;
  /// (Optional, Beta)
  /// Specifies whether the disk restored from a source snapshot should erase Windows specific VSS signature.
  final pulumi.Input<bool?>? eraseWindowsVssSignature;
  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable disks.
  /// Structure is documented below.
  final pulumi.Input<List<DiskGuestOsFeature>?>? guestOsFeatures;
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
  /// Labels to apply to this disk.  A list of key-&gt;value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Any applicable license URI.
  final pulumi.Input<List<String>?>? licenses;
  /// (Optional, Beta)
  /// Indicates whether or not the disk can be read/write attached to more than one instance.
  final pulumi.Input<bool?>? multiWriter;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<DiskParams?>? params;
  /// Physical block size of the persistent disk, in bytes. If not present
  /// in a request, a default value is used. Currently supported sizes
  /// are 4096 and 16384, other sizes may be added in the future.
  /// If an unsupported value is requested, the error message will list
  /// the supported values for the caller's project.
  final pulumi.Input<int?>? physicalBlockSizeBytes;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Indicates how many IOPS must be provisioned for the disk.
  /// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
  /// allows for an update of IOPS every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
  final pulumi.Input<int?>? provisionedIops;
  /// Indicates how much Throughput must be provisioned for the disk.
  /// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
  /// allows for an update of Throughput every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
  final pulumi.Input<int?>? provisionedThroughput;
  /// (Optional, Beta)
  /// Resource policies applied to this disk for automatic snapshot creations.
  /// ~&gt;**NOTE** This value does not support updating the
  /// resource policy, as resource policies can not be updated more than
  /// one at a time. Use
  /// `gcp.compute.DiskResourcePolicyAttachment`
  /// to allow for updating the resource policy attached to the disk.
  final pulumi.Input<List<String>?>? resourcePolicies;
  /// Size of the persistent disk, specified in GB. You can specify this
  /// field when creating a persistent disk using the `image` or
  /// `snapshot` parameter, or specify it alone to create an empty
  /// persistent disk.
  /// If you specify this field along with `image` or `snapshot`,
  /// the value must not be less than the size of the image
  /// or the size of the snapshot.
  /// ~&gt;**NOTE** If you change the size, the provider updates the disk size
  /// if upsizing is detected but recreates the disk if downsizing is requested.
  /// You can add `lifecycle.prevent_destroy` in the config to prevent destroying
  /// and recreating.
  final pulumi.Input<int?>? size;
  /// The source snapshot used to create this disk. You can provide this as
  /// a partial or full URL to the resource. If the snapshot is in another
  /// project than this disk, you must supply a full URL. For example, the
  /// following are valid values:
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
  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final pulumi.Input<DiskSourceImageEncryptionKey?>? sourceImageEncryptionKey;
  /// The source instant snapshot used to create this disk. You can provide this as a partial or full URL to the resource.
  /// For example, the following are valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/project/zones/zone/instantSnapshots/instantSnapshot`
  /// * `projects/project/zones/zone/instantSnapshots/instantSnapshot`
  /// * `zones/zone/instantSnapshots/instantSnapshot`
  final pulumi.Input<String?>? sourceInstantSnapshot;
  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  final pulumi.Input<DiskSourceSnapshotEncryptionKey?>? sourceSnapshotEncryptionKey;
  /// The full Google Cloud Storage URI where the disk image is stored.
  /// This file must be a gzip-compressed tarball whose name ends in .tar.gz or virtual machine disk whose name ends in vmdk.
  /// Valid URIs may start with gs:// or https://storage.googleapis.com/.
  /// This flag is not optimized for creating multiple disks from a source storage object.
  /// To create many disks from a source storage object, use gcloud compute images import instead.
  final pulumi.Input<String?>? sourceStorageObject;
  /// The URL or the name of the storage pool in which the new disk is created.
  /// For example:
  /// * https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/storagePools/{storagePool}
  /// * /projects/{project}/zones/{zone}/storagePools/{storagePool}
  /// * /zones/{zone}/storagePools/{storagePool}
  /// * /{storagePool}
  final pulumi.Input<String?>? storagePool;
  /// URL of the disk type resource describing which disk type to use to
  /// create the disk. Provide this when creating the disk.
  final pulumi.Input<String?>? type;
  /// A reference to the zone where the disk resides.
  final pulumi.Input<String?>? zone;

  /// Creates a new [DiskArgs].
  /// [accessMode] The access mode of the disk.
  /// [architecture] The architecture of the disk. Values include `X86_64`, `ARM64`.
  /// [asyncPrimaryDisk] A nested object resource.
  /// [createSnapshotBeforeDestroy] If set to true, a snapshot of the disk will be created before it is destroyed.
  /// [createSnapshotBeforeDestroyPrefix] This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when
  /// [diskEncryptionKey] Encrypts the disk using a customer-supplied encryption key.
  /// [enableConfidentialCompute] Whether this disk is using confidential compute mode.
  /// [eraseWindowsVssSignature] (Optional, Beta)
  /// [guestOsFeatures] A list of features to enable on the guest operating system.
  /// [image] The image from which to initialize this disk. This can be
  /// [interface] (Optional, Beta, Deprecated)
  /// [labels] Labels to apply to this disk.  A list of key-&gt;value pairs.
  /// [licenses] Any applicable license URI.
  /// [multiWriter] (Optional, Beta)
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [physicalBlockSizeBytes] Physical block size of the persistent disk, in bytes. If not present
  /// [project] The ID of the project in which the resource belongs.
  /// [provisionedIops] Indicates how many IOPS must be provisioned for the disk.
  /// [provisionedThroughput] Indicates how much Throughput must be provisioned for the disk.
  /// [resourcePolicies] (Optional, Beta)
  /// [size] Size of the persistent disk, specified in GB. You can specify this
  /// [snapshot] The source snapshot used to create this disk. You can provide this as
  /// [sourceDisk] The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
  /// [sourceImageEncryptionKey] The customer-supplied encryption key of the source image. Required if
  /// [sourceInstantSnapshot] The source instant snapshot used to create this disk. You can provide this as a partial or full URL to the resource.
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot. Required
  /// [sourceStorageObject] The full Google Cloud Storage URI where the disk image is stored.
  /// [storagePool] The URL or the name of the storage pool in which the new disk is created.
  /// [type] URL of the disk type resource describing which disk type to use to
  /// [zone] A reference to the zone where the disk resides.
  const DiskArgs({
    this.accessMode,
    this.architecture,
    this.asyncPrimaryDisk,
    this.createSnapshotBeforeDestroy,
    this.createSnapshotBeforeDestroyPrefix,
    this.deletionPolicy,
    this.description,
    this.diskEncryptionKey,
    this.enableConfidentialCompute,
    this.eraseWindowsVssSignature,
    this.guestOsFeatures,
    this.image,
    this.interface,
    this.labels,
    this.licenses,
    this.multiWriter,
    this.name,
    this.params,
    this.physicalBlockSizeBytes,
    this.project,
    this.provisionedIops,
    this.provisionedThroughput,
    this.resourcePolicies,
    this.size,
    this.snapshot,
    this.sourceDisk,
    this.sourceImageEncryptionKey,
    this.sourceInstantSnapshot,
    this.sourceSnapshotEncryptionKey,
    this.sourceStorageObject,
    this.storagePool,
    this.type,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'architecture': ?architecture,
      'asyncPrimaryDisk': ?pulumi.Input.mapOptionalInputValue<DiskAsyncPrimaryDisk, Map<String, dynamic>>(asyncPrimaryDisk, (value) => value.toMap()),
      'createSnapshotBeforeDestroy': ?createSnapshotBeforeDestroy,
      'createSnapshotBeforeDestroyPrefix': ?createSnapshotBeforeDestroyPrefix,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<DiskDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'eraseWindowsVssSignature': ?eraseWindowsVssSignature,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<DiskGuestOsFeature>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<DiskGuestOsFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'interface': ?interface,
      'labels': ?labels,
      'licenses': ?licenses,
      'multiWriter': ?multiWriter,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<DiskParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'physicalBlockSizeBytes': ?physicalBlockSizeBytes,
      'project': ?project,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'resourcePolicies': ?resourcePolicies,
      'size': ?size,
      'snapshot': ?snapshot,
      'sourceDisk': ?sourceDisk,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<DiskSourceImageEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceInstantSnapshot': ?sourceInstantSnapshot,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<DiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'sourceStorageObject': ?sourceStorageObject,
      'storagePool': ?storagePool,
      'type': ?type,
      'zone': ?zone,
    };
  }

  factory DiskArgs.fromMap(Map<String, dynamic> map) {
    return DiskArgs(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      asyncPrimaryDisk: (() { final guardedValue = map['asyncPrimaryDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskAsyncPrimaryDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createSnapshotBeforeDestroy: (() { final guardedValue = map['createSnapshotBeforeDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createSnapshotBeforeDestroyPrefix: (() { final guardedValue = map['createSnapshotBeforeDestroyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionKey: (() { final guardedValue = map['diskEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eraseWindowsVssSignature: (() { final guardedValue = map['eraseWindowsVssSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guestOsFeatures: (() { final guardedValue = map['guestOsFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiskGuestOsFeature>(guardedValue, (value) => DiskGuestOsFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      licenses: (() { final guardedValue = map['licenses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      multiWriter: (() { final guardedValue = map['multiWriter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      physicalBlockSizeBytes: (() { final guardedValue = map['physicalBlockSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDisk: (() { final guardedValue = map['sourceDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageEncryptionKey: (() { final guardedValue = map['sourceImageEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskSourceImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceInstantSnapshot: (() { final guardedValue = map['sourceInstantSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSnapshotEncryptionKey: (() { final guardedValue = map['sourceSnapshotEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskSourceSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceStorageObject: (() { final guardedValue = map['sourceStorageObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePool: (() { final guardedValue = map['storagePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
