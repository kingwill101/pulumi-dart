// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_periodic_export_config_start_time.dart';

class InstancePeriodicExportConfig {
  /// Cloud Storage bucket URI for periodic export.
  /// Format: gs://{bucket_name}
  final pulumi.Input<String> gcsUri;
  /// Name of the CMEK key in KMS.
  /// Format:
  /// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}
  final pulumi.Input<String> kmsKey;
  /// Time in UTC to start the periodic export job.
  /// Structure is documented below.
  final pulumi.Input<InstancePeriodicExportConfigStartTime> startTime;

  /// Creates a new [InstancePeriodicExportConfig].
  /// [gcsUri] Cloud Storage bucket URI for periodic export.
  /// [kmsKey] Name of the CMEK key in KMS.
  /// [startTime] Time in UTC to start the periodic export job.
  InstancePeriodicExportConfig({
    required this.gcsUri,
    required this.kmsKey,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsUri': gcsUri,
      'kmsKey': kmsKey,
      'startTime': pulumi.Input.mapInputValue<InstancePeriodicExportConfigStartTime, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory InstancePeriodicExportConfig.fromMap(Map<String, dynamic> map) {
    return InstancePeriodicExportConfig(
      gcsUri: pulumi.Input.fromValue(map['gcsUri'] as String),
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
      startTime: pulumi.Input.fromValue(InstancePeriodicExportConfigStartTime.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}

