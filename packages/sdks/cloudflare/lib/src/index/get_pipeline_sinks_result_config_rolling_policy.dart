// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineSinksResultConfigRollingPolicy {
  /// Files will be rolled after reaching this number of bytes
  final pulumi.Input<int> fileSizeBytes;
  /// Number of seconds of inactivity to wait before rolling over to a new file
  final pulumi.Input<int> inactivitySeconds;
  /// Number of seconds to wait before rolling over to a new file
  final pulumi.Input<int> intervalSeconds;

  /// Creates a new [GetPipelineSinksResultConfigRollingPolicy].
  /// [fileSizeBytes] Files will be rolled after reaching this number of bytes
  /// [inactivitySeconds] Number of seconds of inactivity to wait before rolling over to a new file
  /// [intervalSeconds] Number of seconds to wait before rolling over to a new file
  const GetPipelineSinksResultConfigRollingPolicy({
    required this.fileSizeBytes,
    required this.inactivitySeconds,
    required this.intervalSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSizeBytes': fileSizeBytes,
      'inactivitySeconds': inactivitySeconds,
      'intervalSeconds': intervalSeconds,
    };
  }

  factory GetPipelineSinksResultConfigRollingPolicy.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinksResultConfigRollingPolicy(
      fileSizeBytes: pulumi.Input.fromValue((map['fileSizeBytes'] as num).toInt()),
      inactivitySeconds: pulumi.Input.fromValue((map['inactivitySeconds'] as num).toInt()),
      intervalSeconds: pulumi.Input.fromValue((map['intervalSeconds'] as num).toInt()),
    );
  }
}
