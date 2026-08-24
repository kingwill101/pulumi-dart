// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionPlacementTarget {
  /// TCP host:port for targeted placement.
  final pulumi.Input<String> host;
  /// HTTP hostname for targeted placement.
  final pulumi.Input<String> hostname;
  /// Cloud region in format 'provider:region'.
  final pulumi.Input<String> region;

  /// Creates a new [GetWorkerVersionPlacementTarget].
  /// [host] TCP host:port for targeted placement.
  /// [hostname] HTTP hostname for targeted placement.
  /// [region] Cloud region in format 'provider:region'.
  const GetWorkerVersionPlacementTarget({
    required this.host,
    required this.hostname,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'hostname': hostname,
      'region': region,
    };
  }

  factory GetWorkerVersionPlacementTarget.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionPlacementTarget(
      host: pulumi.Input.fromValue(map['host'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
