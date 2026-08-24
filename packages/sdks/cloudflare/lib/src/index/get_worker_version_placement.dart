// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_version_placement_target.dart';

class GetWorkerVersionPlacement {
  /// TCP host and port for targeted placement.
  final pulumi.Input<String> host;
  /// HTTP hostname for targeted placement.
  final pulumi.Input<String> hostname;
  /// Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// Available values: "smart", "targeted".
  final pulumi.Input<String> mode;
  /// Cloud region for targeted placement in format 'provider:region'.
  final pulumi.Input<String> region;
  /// Array of placement targets (currently limited to single target).
  final pulumi.Input<List<GetWorkerVersionPlacementTarget>> targets;

  /// Creates a new [GetWorkerVersionPlacement].
  /// [host] TCP host and port for targeted placement.
  /// [hostname] HTTP hostname for targeted placement.
  /// [mode] Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
  /// [region] Cloud region for targeted placement in format 'provider:region'.
  /// [targets] Array of placement targets (currently limited to single target).
  const GetWorkerVersionPlacement({
    required this.host,
    required this.hostname,
    required this.mode,
    required this.region,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'hostname': hostname,
      'mode': mode,
      'region': region,
      'targets': pulumi.Input.mapInputValue<List<GetWorkerVersionPlacementTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<GetWorkerVersionPlacementTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkerVersionPlacement.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionPlacement(
      host: pulumi.Input.fromValue(map['host'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      targets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionPlacementTarget>(map['targets']!, (value) => GetWorkerVersionPlacementTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
