// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_boot_disk_initialize_params_source_image_encryption_key.dart';
import 'instance_boot_disk_initialize_params_source_snapshot_encryption_key.dart';

class InstanceBootDiskInitializeParams {
  /// The architecture of the attached disk. Valid values are `ARM64` or `x8664`.
  final pulumi.Input<String?>? architecture;
  /// Whether this disk is using confidential compute mode.
  /// Note: Only supported on hyperdisk skus, diskEncryptionKey is required when setting to true.
  final pulumi.Input<bool?>? enableConfidentialCompute;
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
  /// A set of key/value label pairs assigned to the disk. This
  /// field is only applicable for persistent disks.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Indicates how many IOPS to provision for the disk.
  /// This sets the number of I/O operations per second that the disk can handle.
  /// For more details,see the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks).
  /// Note: Updating currently is only supported for hyperdisk skus via disk update
  /// api/gcloud without the need to delete and recreate the disk, hyperdisk allows
  /// for an update of IOPS every 4 hours. To update your hyperdisk more frequently,
  /// you'll need to manually delete and recreate it.
  final pulumi.Input<int?>? provisionedIops;
  /// Indicates how much throughput to provision for the disk.
  /// This sets the number of throughput mb per second that the disk can handle.
  /// For more details,see the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks).
  /// Note: Updating currently is only supported for hyperdisk skus via disk update
  /// api/gcloud without the need to delete and recreate the disk, hyperdisk allows
  /// for an update of throughput every 4 hours. To update your hyperdisk more
  /// frequently, you'll need to manually delete and recreate it.
  final pulumi.Input<int?>? provisionedThroughput;
  /// A list of short names or selfLinks of zones in which to create the disk. Setting this field converts the disk to a regional disk. You must provide exactly two replica zones, and one zone must be the same as the instance zone.
  final pulumi.Input<List<String>?>? replicaZones;
  /// A tag is a key-value pair that can be attached to a Google Cloud resource. You can use tags to conditionally allow or deny policies based on whether a resource has a specific tag. This value is not returned by the API. In Terraform, this value cannot be updated and changing it will recreate the resource.
  final pulumi.Input<Map<String, String>?>? resourceManagerTags;
  /// A list of selfLinks of resource policies to attach to the instance's boot disk. Modifying this list will cause the instance to recreate, so any external values are not set until the user specifies this field. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String?>? resourcePolicies;
  /// The size of the image in gigabytes. If not specified, it
  /// will inherit the size of its base image.
  final pulumi.Input<int?>? size;
  /// The snapshot from which to initialize this disk. To create a disk with a snapshot that you created, specify the snapshot name in the following format: `global/snapshots/my-backup`
  final pulumi.Input<String?>? snapshot;
  /// Encryption key used to decrypt the given image. Structure is documented below.
  final pulumi.Input<InstanceBootDiskInitializeParamsSourceImageEncryptionKey?>? sourceImageEncryptionKey;
  /// Encryption key used to decrypt the given snapshot. Structure is documented below.
  final pulumi.Input<InstanceBootDiskInitializeParamsSourceSnapshotEncryptionKey?>? sourceSnapshotEncryptionKey;
  /// The URL or the name of the storage pool in which the new disk is created.
  /// For example:
  /// * https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/storagePools/{storagePool}
  /// * /projects/{project}/zones/{zone}/storagePools/{storagePool}
  /// * /zones/{zone}/storagePools/{storagePool}
  /// * /{storagePool}
  final pulumi.Input<String?>? storagePool;
  /// The GCE disk type. Such as pd-standard, pd-balanced or pd-ssd.
  final pulumi.Input<String?>? type;

  /// Creates a new [InstanceBootDiskInitializeParams].
  /// [architecture] The architecture of the attached disk. Valid values are `ARM64` or `x8664`.
  /// [enableConfidentialCompute] Whether this disk is using confidential compute mode.
  /// [image] The image from which to initialize this disk. This can be
  /// [labels] A set of key/value label pairs assigned to the disk. This
  /// [provisionedIops] Indicates how many IOPS to provision for the disk.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk.
  /// [replicaZones] A list of short names or selfLinks of zones in which to create the disk. Setting this field converts the disk to a regional disk. You must provide exactly two replica zones, and one zone must be the same as the instance zone.
  /// [resourceManagerTags] A tag is a key-value pair that can be attached to a Google Cloud resource. You can use tags to conditionally allow or deny policies based on whether a resource has a specific tag. This value is not returned by the API. In Terraform, this value cannot be updated and changing it will recreate the resource.
  /// [resourcePolicies] A list of selfLinks of resource policies to attach to the instance's boot disk. Modifying this list will cause the instance to recreate, so any external values are not set until the user specifies this field. Currently a max of 1 resource policy is supported.
  /// [size] The size of the image in gigabytes. If not specified, it
  /// [snapshot] The snapshot from which to initialize this disk. To create a disk with a snapshot that you created, specify the snapshot name in the following format: `global/snapshots/my-backup`
  /// [sourceImageEncryptionKey] Encryption key used to decrypt the given image. Structure is documented below.
  /// [sourceSnapshotEncryptionKey] Encryption key used to decrypt the given snapshot. Structure is documented below.
  /// [storagePool] The URL or the name of the storage pool in which the new disk is created.
  /// [type] The GCE disk type. Such as pd-standard, pd-balanced or pd-ssd.
  const InstanceBootDiskInitializeParams({
    this.architecture,
    this.enableConfidentialCompute,
    this.image,
    this.labels,
    this.provisionedIops,
    this.provisionedThroughput,
    this.replicaZones,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.size,
    this.snapshot,
    this.sourceImageEncryptionKey,
    this.sourceSnapshotEncryptionKey,
    this.storagePool,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'image': ?image,
      'labels': ?labels,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'replicaZones': ?replicaZones,
      'resourceManagerTags': ?resourceManagerTags,
      'resourcePolicies': ?resourcePolicies,
      'size': ?size,
      'snapshot': ?snapshot,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<InstanceBootDiskInitializeParamsSourceImageEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<InstanceBootDiskInitializeParamsSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'storagePool': ?storagePool,
      'type': ?type,
    };
  }

  factory InstanceBootDiskInitializeParams.fromMap(Map<String, dynamic> map) {
    return InstanceBootDiskInitializeParams(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      replicaZones: (() { final guardedValue = map['replicaZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageEncryptionKey: (() { final guardedValue = map['sourceImageEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceBootDiskInitializeParamsSourceImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceSnapshotEncryptionKey: (() { final guardedValue = map['sourceSnapshotEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceBootDiskInitializeParamsSourceSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storagePool: (() { final guardedValue = map['storagePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
