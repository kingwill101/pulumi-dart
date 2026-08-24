// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_workers_route_workers_route_args_doc}
/// The set of arguments for WorkersRoute.
/// {@endtemplate}
/// {@macro pulumi_index_workers_route_workers_route_args_doc}
class WorkersRouteArgs {
  /// Pattern to match incoming requests against. [Learn more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
  final pulumi.Input<String> pattern;
  /// Name of the script to run if the route matches.
  final pulumi.Input<String?>? script;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [WorkersRouteArgs].
  /// [pattern] Pattern to match incoming requests against. [Learn more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
  /// [script] Name of the script to run if the route matches.
  /// [zoneId] Identifier.
  const WorkersRouteArgs({
    required this.pattern,
    this.script,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pattern': pattern,
      'script': ?script,
      'zoneId': zoneId,
    };
  }

  factory WorkersRouteArgs.fromMap(Map<String, dynamic> map) {
    return WorkersRouteArgs(
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
