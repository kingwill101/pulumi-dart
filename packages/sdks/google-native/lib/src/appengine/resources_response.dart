// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_response.dart';

/// Machine resources for a version.
class ResourcesResponse {
  /// Number of CPU cores needed.
  final pulumi.Input<double> cpu;
  /// Disk size (GB) needed.
  final pulumi.Input<double> diskGb;
  /// The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  final pulumi.Input<String> kmsKeyReference;
  /// Memory (GB) needed.
  final pulumi.Input<double> memoryGb;
  /// User specified volumes.
  final pulumi.Input<List<VolumeResponse>> volumes;

  /// Creates a new [ResourcesResponse].
  /// [cpu] Number of CPU cores needed.
  /// [diskGb] Disk size (GB) needed.
  /// [kmsKeyReference] The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  /// [memoryGb] Memory (GB) needed.
  /// [volumes] User specified volumes.
  ResourcesResponse({
    required this.cpu,
    required this.diskGb,
    required this.kmsKeyReference,
    required this.memoryGb,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'diskGb': diskGb,
      'kmsKeyReference': kmsKeyReference,
      'memoryGb': memoryGb,
      'volumes': pulumi.Input.mapInputValue<List<VolumeResponse>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourcesResponse.fromMap(Map<String, dynamic> map) {
    return ResourcesResponse(
      cpu: pulumi.Input.fromValue(map['cpu'] as double),
      diskGb: pulumi.Input.fromValue(map['diskGb'] as double),
      kmsKeyReference: pulumi.Input.fromValue(map['kmsKeyReference'] as String),
      memoryGb: pulumi.Input.fromValue(map['memoryGb'] as double),
      volumes: pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeResponse>(map['volumes']!, (value) => VolumeResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

