// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_rate_limit_get_rate_limit_args_doc}
/// Arguments for getRateLimit.
/// {@endtemplate}
/// {@macro pulumi_index_get_rate_limit_get_rate_limit_args_doc}
class GetRateLimitArgs {
  /// Defines the unique identifier of the rate limit.
  final pulumi.Input<String> rateLimitId;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetRateLimitArgs].
  /// [rateLimitId] Defines the unique identifier of the rate limit.
  /// [zoneId] Defines an identifier.
  const GetRateLimitArgs({
    required this.rateLimitId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rateLimitId': rateLimitId,
      'zoneId': ?zoneId,
    };
  }

  factory GetRateLimitArgs.fromMap(Map<String, dynamic> map) {
    return GetRateLimitArgs(
      rateLimitId: pulumi.Input.fromValue(map['rateLimitId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
