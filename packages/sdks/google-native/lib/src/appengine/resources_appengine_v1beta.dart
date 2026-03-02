// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_appengine_v1beta.dart';

/// Machine resources for a version.
class ResourcesAppengineV1beta {
  /// Number of CPU cores needed.
  final pulumi.Input<double>? cpu;
  /// Disk size (GB) needed.
  final pulumi.Input<double>? diskGb;
  /// The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  final pulumi.Input<String>? kmsKeyReference;
  /// Memory (GB) needed.
  final pulumi.Input<double>? memoryGb;
  /// User specified volumes.
  final pulumi.Input<List<VolumeAppengineV1beta>>? volumes;

  /// Creates a new [ResourcesAppengineV1beta].
  /// [cpu] Number of CPU cores needed.
  /// [diskGb] Disk size (GB) needed.
  /// [kmsKeyReference] The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  /// [memoryGb] Memory (GB) needed.
  /// [volumes] User specified volumes.
  ResourcesAppengineV1beta({
    this.cpu,
    this.diskGb,
    this.kmsKeyReference,
    this.memoryGb,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'diskGb': ?diskGb,
      'kmsKeyReference': ?kmsKeyReference,
      'memoryGb': ?memoryGb,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<VolumeAppengineV1beta>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeAppengineV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourcesAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ResourcesAppengineV1beta(
      cpu: map['cpu'] == null ? null : (map['cpu']! as double).input(),
      diskGb: map['diskGb'] == null ? null : (map['diskGb']! as double).input(),
      kmsKeyReference: map['kmsKeyReference'] == null ? null : (map['kmsKeyReference']! as String).input(),
      memoryGb: map['memoryGb'] == null ? null : (map['memoryGb']! as double).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<VolumeAppengineV1beta>(map['volumes']!, (value) => VolumeAppengineV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

