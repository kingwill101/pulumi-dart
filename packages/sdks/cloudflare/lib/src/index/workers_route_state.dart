// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkersRoute resources.
class WorkersRouteState {
  /// Pattern to match incoming requests against. [Learn more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
  final pulumi.Input<String?>? pattern;
  /// Name of the script to run if the route matches.
  final pulumi.Input<String?>? script;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [WorkersRouteState].
  /// [pattern] Pattern to match incoming requests against. [Learn more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
  /// [script] Name of the script to run if the route matches.
  /// [zoneId] Identifier.
  const WorkersRouteState({
    this.pattern,
    this.script,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pattern': ?pattern,
      'script': ?script,
      'zoneId': ?zoneId,
    };
  }

  factory WorkersRouteState.fromMap(Map<String, dynamic> map) {
    return WorkersRouteState(
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
