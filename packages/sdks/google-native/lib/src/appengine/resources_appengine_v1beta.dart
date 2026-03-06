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
  const ResourcesAppengineV1beta({
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
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      diskGb: (() { final guardedValue = map['diskGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      kmsKeyReference: (() { final guardedValue = map['kmsKeyReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryGb: (() { final guardedValue = map['memoryGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeAppengineV1beta>(guardedValue, (value) => VolumeAppengineV1beta.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

