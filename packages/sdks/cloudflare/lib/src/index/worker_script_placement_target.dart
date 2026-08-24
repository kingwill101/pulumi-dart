// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerScriptPlacementTarget {
  /// TCP host:port for targeted placement.
  final pulumi.Input<String?>? host;
  /// HTTP hostname for targeted placement.
  final pulumi.Input<String?>? hostname;
  /// Cloud region in format 'provider:region'.
  final pulumi.Input<String?>? region;

  /// Creates a new [WorkerScriptPlacementTarget].
  /// [host] TCP host:port for targeted placement.
  /// [hostname] HTTP hostname for targeted placement.
  /// [region] Cloud region in format 'provider:region'.
  const WorkerScriptPlacementTarget({
    this.host,
    this.hostname,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'hostname': ?hostname,
      'region': ?region,
    };
  }

  factory WorkerScriptPlacementTarget.fromMap(Map<String, dynamic> map) {
    return WorkerScriptPlacementTarget(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
