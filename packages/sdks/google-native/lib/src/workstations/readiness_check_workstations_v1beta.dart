// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A readiness check to be performed on a workstation.
class ReadinessCheckWorkstationsV1beta {
  /// Optional. Path to which the request should be sent.
  final pulumi.Input<String>? path;
  /// Optional. Port to which the request should be sent.
  final pulumi.Input<int>? port;

  /// Creates a new [ReadinessCheckWorkstationsV1beta].
  /// [path] Optional. Path to which the request should be sent.
  /// [port] Optional. Port to which the request should be sent.
  const ReadinessCheckWorkstationsV1beta({
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'port': ?port,
    };
  }

  factory ReadinessCheckWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return ReadinessCheckWorkstationsV1beta(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

