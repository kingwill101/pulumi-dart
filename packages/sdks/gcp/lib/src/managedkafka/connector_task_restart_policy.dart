// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorTaskRestartPolicy {
  /// The maximum amount of time to wait before retrying a failed task. This sets an upper bound for the backoff delay.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? maximumBackoff;
  /// The minimum amount of time to wait before retrying a failed task. This sets a lower bound for the backoff delay.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? minimumBackoff;

  /// Creates a new [ConnectorTaskRestartPolicy].
  /// [maximumBackoff] The maximum amount of time to wait before retrying a failed task. This sets an upper bound for the backoff delay.
  /// [minimumBackoff] The minimum amount of time to wait before retrying a failed task. This sets a lower bound for the backoff delay.
  ConnectorTaskRestartPolicy({
    this.maximumBackoff,
    this.minimumBackoff,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumBackoff': ?maximumBackoff,
      'minimumBackoff': ?minimumBackoff,
    };
  }

  factory ConnectorTaskRestartPolicy.fromMap(Map<String, dynamic> map) {
    return ConnectorTaskRestartPolicy(
      maximumBackoff: (() { final guardedValue = map['maximumBackoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumBackoff: (() { final guardedValue = map['minimumBackoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

