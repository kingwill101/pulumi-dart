// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_healthcheck_get_healthcheck_args_doc}
/// Arguments for getHealthcheck.
/// {@endtemplate}
/// {@macro pulumi_index_get_healthcheck_get_healthcheck_args_doc}
class GetHealthcheckArgs {
  /// Identifier
  final pulumi.Input<String> healthcheckId;
  /// Identifier
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetHealthcheckArgs].
  /// [healthcheckId] Identifier
  /// [zoneId] Identifier
  const GetHealthcheckArgs({
    required this.healthcheckId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthcheckId': healthcheckId,
      'zoneId': ?zoneId,
    };
  }

  factory GetHealthcheckArgs.fromMap(Map<String, dynamic> map) {
    return GetHealthcheckArgs(
      healthcheckId: pulumi.Input.fromValue(map['healthcheckId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
