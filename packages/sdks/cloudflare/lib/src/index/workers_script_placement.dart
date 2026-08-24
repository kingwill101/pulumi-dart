// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_script_placement_target.dart';

class WorkersScriptPlacement {
  /// TCP host and port for targeted placement.
  final pulumi.Input<String?>? host;
  /// HTTP hostname for targeted placement.
  final pulumi.Input<String?>? hostname;
  /// The last time the script was analyzed for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  final pulumi.Input<String?>? lastAnalyzedAt;
  /// Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// Available values: "smart", "targeted".
  final pulumi.Input<String?>? mode;
  /// Cloud region for targeted placement in format 'provider:region'.
  final pulumi.Input<String?>? region;
  /// Status of [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// Available values: "SUCCESS", "UNSUPPORTED*APPLICATION", "INSUFFICIENT*INVOCATIONS".
  final pulumi.Input<String?>? status;
  /// Array of placement targets (currently limited to single target).
  final pulumi.Input<List<WorkersScriptPlacementTarget>?>? targets;

  /// Creates a new [WorkersScriptPlacement].
  /// [host] TCP host and port for targeted placement.
  /// [hostname] HTTP hostname for targeted placement.
  /// [lastAnalyzedAt] The last time the script was analyzed for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// [mode] Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// [region] Cloud region for targeted placement in format 'provider:region'.
  /// [status] Status of [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// [targets] Array of placement targets (currently limited to single target).
  const WorkersScriptPlacement({
    this.host,
    this.hostname,
    this.lastAnalyzedAt,
    this.mode,
    this.region,
    this.status,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'hostname': ?hostname,
      'lastAnalyzedAt': ?lastAnalyzedAt,
      'mode': ?mode,
      'region': ?region,
      'status': ?status,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<WorkersScriptPlacementTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<WorkersScriptPlacementTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkersScriptPlacement.fromMap(Map<String, dynamic> map) {
    return WorkersScriptPlacement(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastAnalyzedAt: (() { final guardedValue = map['lastAnalyzedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersScriptPlacementTarget>(guardedValue, (value) => WorkersScriptPlacementTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
