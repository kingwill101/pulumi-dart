// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rate_limit_action.dart';
import 'get_rate_limit_bypass.dart';
import 'get_rate_limit_match.dart';

/// Result data returned by getRateLimit.
class GetRateLimitResult {
  /// The action to perform when the threshold of matched traffic within the configured period is exceeded.
  final GetRateLimitAction? action;
  /// Criteria specifying when the current rate limit should be bypassed. You can specify that the rate limit should not apply to one or more URLs.
  final List<GetRateLimitBypass>? bypasses;
  /// An informative summary of the rule. This value is sanitized and any tags will be removed.
  final String? description;
  /// When true, indicates that the rate limit is currently disabled.
  final bool? disabled;
  /// Defines the unique identifier of the rate limit.
  final String? id;
  /// Determines which traffic the rate limit counts towards the threshold.
  final GetRateLimitMatch? match;
  /// The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
  final double? period;
  /// Defines the unique identifier of the rate limit.
  final String? rateLimitId;
  /// The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
  final double? threshold;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetRateLimitResult].
  /// [action] The action to perform when the threshold of matched traffic within the configured period is exceeded.
  /// [bypasses] Criteria specifying when the current rate limit should be bypassed. You can specify that the rate limit should not apply to one or more URLs.
  /// [description] An informative summary of the rule. This value is sanitized and any tags will be removed.
  /// [disabled] When true, indicates that the rate limit is currently disabled.
  /// [id] Defines the unique identifier of the rate limit.
  /// [match] Determines which traffic the rate limit counts towards the threshold.
  /// [period] The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
  /// [rateLimitId] Defines the unique identifier of the rate limit.
  /// [threshold] The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
  /// [zoneId] Defines an identifier.
  const GetRateLimitResult({
    this.action,
    this.bypasses,
    this.description,
    this.disabled,
    this.id,
    this.match,
    this.period,
    this.rateLimitId,
    this.threshold,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action?.toMap(),
      'bypasses': ?(() { final guardedValue = bypasses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRateLimitBypass, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'disabled': ?disabled,
      'id': ?id,
      'match': ?match?.toMap(),
      'period': ?period,
      'rateLimitId': ?rateLimitId,
      'threshold': ?threshold,
      'zoneId': ?zoneId,
    };
  }

  factory GetRateLimitResult.fromMap(Map<String, dynamic> map) {
    return GetRateLimitResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return GetRateLimitAction.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      bypasses: (() { final guardedValue = map['bypasses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRateLimitBypass>(guardedValue, (value) => GetRateLimitBypass.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return GetRateLimitMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      rateLimitId: (() { final guardedValue = map['rateLimitId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
