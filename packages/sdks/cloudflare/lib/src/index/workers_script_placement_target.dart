// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersScriptPlacementTarget {
  /// TCP host:port for targeted placement.
  final pulumi.Input<String?>? host;
  /// HTTP hostname for targeted placement.
  final pulumi.Input<String?>? hostname;
  /// Cloud region in format 'provider:region'.
  final pulumi.Input<String?>? region;

  /// Creates a new [WorkersScriptPlacementTarget].
  /// [host] TCP host:port for targeted placement.
  /// [hostname] HTTP hostname for targeted placement.
  /// [region] Cloud region in format 'provider:region'.
  const WorkersScriptPlacementTarget({
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

  factory WorkersScriptPlacementTarget.fromMap(Map<String, dynamic> map) {
    return WorkersScriptPlacementTarget(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
