// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcs.dart';
import 'nfs.dart';

/// Volume describes a volume and parameters for it to be mounted to a VM.
class Volume {
  /// Device name of an attached disk volume, which should align with a device_name specified by job.allocation_policy.instances[0].policy.disks[i].device_name or defined by the given instance template in job.allocation_policy.instances[0].instance_template.
  final pulumi.Input<String>? deviceName;
  /// A Google Cloud Storage (GCS) volume.
  final pulumi.Input<GCS>? gcs;
  /// For Google Cloud Storage (GCS), mount options are the options supported by the gcsfuse tool (https://github.com/GoogleCloudPlatform/gcsfuse). For existing persistent disks, mount options provided by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html) except writing are supported. This is due to restrictions of multi-writer mode (https://cloud.google.com/compute/docs/disks/sharing-disks-between-vms). For other attached disks and Network File System (NFS), mount options are these supported by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html).
  final pulumi.Input<List<String>>? mountOptions;
  /// The mount path for the volume, e.g. /mnt/disks/share.
  final pulumi.Input<String>? mountPath;
  /// A Network File System (NFS) volume. For example, a Filestore file share.
  final pulumi.Input<NFS>? nfs;

  /// Creates a new [Volume].
  /// [deviceName] Device name of an attached disk volume, which should align with a device_name specified by job.allocation_policy.instances[0].policy.disks[i].device_name or defined by the given instance template in job.allocation_policy.instances[0].instance_template.
  /// [gcs] A Google Cloud Storage (GCS) volume.
  /// [mountOptions] For Google Cloud Storage (GCS), mount options are the options supported by the gcsfuse tool (https://github.com/GoogleCloudPlatform/gcsfuse). For existing persistent disks, mount options provided by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html) except writing are supported. This is due to restrictions of multi-writer mode (https://cloud.google.com/compute/docs/disks/sharing-disks-between-vms). For other attached disks and Network File System (NFS), mount options are these supported by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html).
  /// [mountPath] The mount path for the volume, e.g. /mnt/disks/share.
  /// [nfs] A Network File System (NFS) volume. For example, a Filestore file share.
  Volume({
    this.deviceName,
    this.gcs,
    this.mountOptions,
    this.mountPath,
    this.nfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'gcs': ?pulumi.Input.mapOptionalInputValue<GCS, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'mountOptions': ?mountOptions,
      'mountPath': ?mountPath,
      'nfs': ?pulumi.Input.mapOptionalInputValue<NFS, Map<String, dynamic>>(nfs, (value) => value.toMap()),
    };
  }

  factory Volume.fromMap(Map<String, dynamic> map) {
    return Volume(
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcs: (() { final guardedValue = map['gcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GCS.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfs: (() { final guardedValue = map['nfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NFS.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

