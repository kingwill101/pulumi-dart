// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_version_placement_target.dart';

class WorkerVersionPlacement {
  /// TCP host and port for targeted placement.
  final pulumi.Input<String?>? host;
  /// HTTP hostname for targeted placement.
  final pulumi.Input<String?>? hostname;
  /// Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// Available values: "smart", "targeted".
  final pulumi.Input<String?>? mode;
  /// Cloud region for targeted placement in format 'provider:region'.
  final pulumi.Input<String?>? region;
  /// Array of placement targets (currently limited to single target).
  final pulumi.Input<List<WorkerVersionPlacementTarget>?>? targets;

  /// Creates a new [WorkerVersionPlacement].
  /// [host] TCP host and port for targeted placement.
  /// [hostname] HTTP hostname for targeted placement.
  /// [mode] Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// [region] Cloud region for targeted placement in format 'provider:region'.
  /// [targets] Array of placement targets (currently limited to single target).
  const WorkerVersionPlacement({
    this.host,
    this.hostname,
    this.mode,
    this.region,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'hostname': ?hostname,
      'mode': ?mode,
      'region': ?region,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionPlacementTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<WorkerVersionPlacementTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkerVersionPlacement.fromMap(Map<String, dynamic> map) {
    return WorkerVersionPlacement(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionPlacementTarget>(guardedValue, (value) => WorkerVersionPlacementTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
