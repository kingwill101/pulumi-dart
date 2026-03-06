// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A readiness check to be performed on a workstation.
class ReadinessCheck {
  /// Optional. Path to which the request should be sent.
  final pulumi.Input<String>? path;
  /// Optional. Port to which the request should be sent.
  final pulumi.Input<int>? port;

  /// Creates a new [ReadinessCheck].
  /// [path] Optional. Path to which the request should be sent.
  /// [port] Optional. Port to which the request should be sent.
  const ReadinessCheck({
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'port': ?port,
    };
  }

  factory ReadinessCheck.fromMap(Map<String, dynamic> map) {
    return ReadinessCheck(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

