// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_scripts_result_placement_target.dart';

class GetWorkersScriptsResultPlacement {
  /// TCP host and port for targeted placement.
  final pulumi.Input<String> host;
  /// HTTP hostname for targeted placement.
  final pulumi.Input<String> hostname;
  /// The last time the script was analyzed for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  final pulumi.Input<String> lastAnalyzedAt;
  /// Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// Available values: "smart", "targeted".
  final pulumi.Input<String> mode;
  /// Cloud region for targeted placement in format 'provider:region'.
  final pulumi.Input<String> region;
  /// Status of [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// Available values: "SUCCESS", "UNSUPPORTED*APPLICATION", "INSUFFICIENT*INVOCATIONS".
  final pulumi.Input<String> status;
  /// Array of placement targets (currently limited to single target).
  final pulumi.Input<List<GetWorkersScriptsResultPlacementTarget>> targets;

  /// Creates a new [GetWorkersScriptsResultPlacement].
  /// [host] TCP host and port for targeted placement.
  /// [hostname] HTTP hostname for targeted placement.
  /// [lastAnalyzedAt] The last time the script was analyzed for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// [mode] Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// [region] Cloud region for targeted placement in format 'provider:region'.
  /// [status] Status of [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// [targets] Array of placement targets (currently limited to single target).
  const GetWorkersScriptsResultPlacement({
    required this.host,
    required this.hostname,
    required this.lastAnalyzedAt,
    required this.mode,
    required this.region,
    required this.status,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'hostname': hostname,
      'lastAnalyzedAt': lastAnalyzedAt,
      'mode': mode,
      'region': region,
      'status': status,
      'targets': pulumi.Input.mapInputValue<List<GetWorkersScriptsResultPlacementTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<GetWorkersScriptsResultPlacementTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkersScriptsResultPlacement.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsResultPlacement(
      host: pulumi.Input.fromValue(map['host'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      lastAnalyzedAt: pulumi.Input.fromValue(map['lastAnalyzedAt'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      targets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkersScriptsResultPlacementTarget>(map['targets']!, (value) => GetWorkersScriptsResultPlacementTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
