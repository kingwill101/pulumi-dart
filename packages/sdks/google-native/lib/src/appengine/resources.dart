// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume.dart';

/// Machine resources for a version.
class Resources {
  /// Number of CPU cores needed.
  final pulumi.Input<double>? cpu;

  /// Disk size (GB) needed.
  final pulumi.Input<double>? diskGb;

  /// The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  final pulumi.Input<String>? kmsKeyReference;

  /// Memory (GB) needed.
  final pulumi.Input<double>? memoryGb;

  /// User specified volumes.
  final pulumi.Input<List<Volume>>? volumes;

  /// Creates a new [Resources].
  /// [cpu] Number of CPU cores needed.
  /// [diskGb] Disk size (GB) needed.
  /// [kmsKeyReference] The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  /// [memoryGb] Memory (GB) needed.
  /// [volumes] User specified volumes.
  Resources({
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
      'volumes':
          ?pulumi.Input.mapOptionalInputValue<
            List<Volume>,
            List<Map<String, dynamic>>
          >(
            volumes,
            (value) => pulumi.Input.encodeList<Volume, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory Resources.fromMap(Map<String, dynamic> map) {
    return Resources(
      cpu: (() {
        final guardedValue = map['cpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      diskGb: (() {
        final guardedValue = map['diskGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      kmsKeyReference: (() {
        final guardedValue = map['kmsKeyReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memoryGb: (() {
        final guardedValue = map['memoryGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      volumes: (() {
        final guardedValue = map['volumes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Volume>(
            guardedValue,
            (value) => Volume.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
