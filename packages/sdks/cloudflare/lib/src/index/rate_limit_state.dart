// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_limit_action.dart';
import 'rate_limit_bypass.dart';
import 'rate_limit_match.dart';

/// Input properties used for looking up and filtering RateLimit resources.
class RateLimitState {
  /// The action to perform when the threshold of matched traffic within the configured period is exceeded.
  final pulumi.Input<RateLimitAction?>? action;
  /// Criteria specifying when the current rate limit should be bypassed. You can specify that the rate limit should not apply to one or more URLs.
  final pulumi.Input<List<RateLimitBypass>?>? bypasses;
  /// An informative summary of the rule. This value is sanitized and any tags will be removed.
  final pulumi.Input<String?>? description;
  /// When true, indicates that the rate limit is currently disabled.
  final pulumi.Input<bool?>? disabled;
  /// Determines which traffic the rate limit counts towards the threshold.
  final pulumi.Input<RateLimitMatch?>? match;
  /// The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
  final pulumi.Input<double?>? period;
  /// The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
  final pulumi.Input<double?>? threshold;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [RateLimitState].
  /// [action] The action to perform when the threshold of matched traffic within the configured period is exceeded.
  /// [bypasses] Criteria specifying when the current rate limit should be bypassed. You can specify that the rate limit should not apply to one or more URLs.
  /// [description] An informative summary of the rule. This value is sanitized and any tags will be removed.
  /// [disabled] When true, indicates that the rate limit is currently disabled.
  /// [match] Determines which traffic the rate limit counts towards the threshold.
  /// [period] The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
  /// [threshold] The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
  /// [zoneId] Defines an identifier.
  const RateLimitState({
    this.action,
    this.bypasses,
    this.description,
    this.disabled,
    this.match,
    this.period,
    this.threshold,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<RateLimitAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'bypasses': ?pulumi.Input.mapOptionalInputValue<List<RateLimitBypass>, List<Map<String, dynamic>>>(bypasses, (value) => pulumi.Input.encodeList<RateLimitBypass, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'disabled': ?disabled,
      'match': ?pulumi.Input.mapOptionalInputValue<RateLimitMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'period': ?period,
      'threshold': ?threshold,
      'zoneId': ?zoneId,
    };
  }

  factory RateLimitState.fromMap(Map<String, dynamic> map) {
    return RateLimitState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RateLimitAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bypasses: (() { final guardedValue = map['bypasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RateLimitBypass>(guardedValue, (value) => RateLimitBypass.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RateLimitMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
