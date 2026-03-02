// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the data disk used by a workflow job.
class Disk {
  /// Disk storage type, as defined by Google Compute Engine. This must be a disk type appropriate to the project and zone in which the workers will run. If unknown or unspecified, the service will attempt to choose a reasonable default. For example, the standard persistent disk type is a resource name typically ending in "pd-standard". If SSD persistent disks are available, the resource name typically ends with "pd-ssd". The actual valid values are defined the Google Compute Engine API, not by the Cloud Dataflow API; consult the Google Compute Engine documentation for more information about determining the set of available disk types for a particular project and zone. Google Compute Engine Disk types are local to a particular project in a particular zone, and so the resource name will typically look something like this: compute.googleapis.com/projects/project-id/zones/zone/diskTypes/pd-standard
  final pulumi.Input<String>? diskType;
  /// Directory in a VM where disk is mounted.
  final pulumi.Input<String>? mountPoint;
  /// Size of disk in GB. If zero or unspecified, the service will attempt to choose a reasonable default.
  final pulumi.Input<int>? sizeGb;

  /// Creates a new [Disk].
  /// [diskType] Disk storage type, as defined by Google Compute Engine. This must be a disk type appropriate to the project and zone in which the workers will run. If unknown or unspecified, the service will attempt to choose a reasonable default. For example, the standard persistent disk type is a resource name typically ending in "pd-standard". If SSD persistent disks are available, the resource name typically ends with "pd-ssd". The actual valid values are defined the Google Compute Engine API, not by the Cloud Dataflow API; consult the Google Compute Engine documentation for more information about determining the set of available disk types for a particular project and zone. Google Compute Engine Disk types are local to a particular project in a particular zone, and so the resource name will typically look something like this: compute.googleapis.com/projects/project-id/zones/zone/diskTypes/pd-standard
  /// [mountPoint] Directory in a VM where disk is mounted.
  /// [sizeGb] Size of disk in GB. If zero or unspecified, the service will attempt to choose a reasonable default.
  Disk({
    this.diskType,
    this.mountPoint,
    this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskType': ?diskType,
      'mountPoint': ?mountPoint,
      'sizeGb': ?sizeGb,
    };
  }

  factory Disk.fromMap(Map<String, dynamic> map) {
    return Disk(
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      mountPoint: map['mountPoint'] == null ? null : (map['mountPoint'] as String).input(),
      sizeGb: map['sizeGb'] == null ? null : (map['sizeGb'] as int).input(),
    );
  }
}

