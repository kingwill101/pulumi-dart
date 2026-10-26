// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_limit_action.dart';
import 'rate_limit_match.dart';

/// Input properties used for looking up and filtering RateLimit resources.
class RateLimitState {
  /// The action to perform when the threshold of matched traffic within the configured period is exceeded.
  final pulumi.Input<RateLimitAction?>? action;
  /// Determines which traffic the rate limit counts towards the threshold.
  final pulumi.Input<RateLimitMatch?>? match;
  /// The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
  final pulumi.Input<double?>? period;
  /// Defines the unique identifier of the rate limit.
  final pulumi.Input<String?>? rateLimitId;
  /// The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
  final pulumi.Input<double?>? threshold;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [RateLimitState].
  /// [action] The action to perform when the threshold of matched traffic within the configured period is exceeded.
  /// [match] Determines which traffic the rate limit counts towards the threshold.
  /// [period] The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
  /// [rateLimitId] Defines the unique identifier of the rate limit.
  /// [threshold] The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
  /// [zoneId] Defines an identifier.
  const RateLimitState({
    this.action,
    this.match,
    this.period,
    this.rateLimitId,
    this.threshold,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<RateLimitAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': ?pulumi.Input.mapOptionalInputValue<RateLimitMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'period': ?period,
      'rateLimitId': ?rateLimitId,
      'threshold': ?threshold,
      'zoneId': ?zoneId,
    };
  }

  factory RateLimitState.fromMap(Map<String, dynamic> map) {
    return RateLimitState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RateLimitAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RateLimitMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      rateLimitId: (() { final guardedValue = map['rateLimitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
