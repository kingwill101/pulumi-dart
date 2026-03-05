// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FailoverGroupReadWriteEndpointFailoverPolicy {
  /// The grace period in minutes, before failover with data loss is attempted for the read-write endpoint. Required when `mode` is `Automatic`.
  final pulumi.Input<int>? graceMinutes;
  /// The failover policy of the read-write endpoint for the failover group. Possible values are `Automatic` or `Manual`.
  final pulumi.Input<String> mode;

  /// Creates a new [FailoverGroupReadWriteEndpointFailoverPolicy].
  /// [graceMinutes] The grace period in minutes, before failover with data loss is attempted for the read-write endpoint. Required when `mode` is `Automatic`.
  /// [mode] The failover policy of the read-write endpoint for the failover group. Possible values are `Automatic` or `Manual`.
  FailoverGroupReadWriteEndpointFailoverPolicy({
    this.graceMinutes,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graceMinutes': ?graceMinutes,
      'mode': mode,
    };
  }

  factory FailoverGroupReadWriteEndpointFailoverPolicy.fromMap(Map<String, dynamic> map) {
    return FailoverGroupReadWriteEndpointFailoverPolicy(
      graceMinutes: (() { final guardedValue = map['graceMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

