// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFailoverGroupReadWriteEndpointFailoverPolicy {
  /// The grace period in minutes, before failover with data loss is attempted for the read-write endpoint.
  final pulumi.Input<int> graceMinutes;
  /// The failover policy of the read-write endpoint for the Failover Group.
  final pulumi.Input<String> mode;

  /// Creates a new [GetFailoverGroupReadWriteEndpointFailoverPolicy].
  /// [graceMinutes] The grace period in minutes, before failover with data loss is attempted for the read-write endpoint.
  /// [mode] The failover policy of the read-write endpoint for the Failover Group.
  const GetFailoverGroupReadWriteEndpointFailoverPolicy({
    required this.graceMinutes,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graceMinutes': graceMinutes,
      'mode': mode,
    };
  }

  factory GetFailoverGroupReadWriteEndpointFailoverPolicy.fromMap(Map<String, dynamic> map) {
    return GetFailoverGroupReadWriteEndpointFailoverPolicy(
      graceMinutes: pulumi.Input.fromValue(map['graceMinutes'] as int),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
