// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy {
  /// Applies only if `mode` is `Automatic`. The grace period in minutes before failover with data loss is attempted.
  final pulumi.Input<int>? graceMinutes;
  /// The failover mode. Possible values are `Automatic` or `Manual`.
  final pulumi.Input<String> mode;

  /// Creates a new [ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy].
  /// [graceMinutes] Applies only if `mode` is `Automatic`. The grace period in minutes before failover with data loss is attempted.
  /// [mode] The failover mode. Possible values are `Automatic` or `Manual`.
  ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy({
    this.graceMinutes,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graceMinutes': ?graceMinutes,
      'mode': mode,
    };
  }

  factory ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy(
      graceMinutes: map['graceMinutes'] == null ? null : (map['graceMinutes']! as int).input(),
      mode: (map['mode'] as String).input(),
    );
  }
}

