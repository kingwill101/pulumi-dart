// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_limit_action.dart';
import 'rate_limit_match.dart';

/// {@template pulumi_index_rate_limit_rate_limit_args_doc}
/// The set of arguments for RateLimit.
/// {@endtemplate}
/// {@macro pulumi_index_rate_limit_rate_limit_args_doc}
class RateLimitArgs {
  /// The action to perform when the threshold of matched traffic within the configured period is exceeded.
  final pulumi.Input<RateLimitAction> action;
  /// Determines which traffic the rate limit counts towards the threshold.
  final pulumi.Input<RateLimitMatch> match;
  /// The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
  final pulumi.Input<double> period;
  /// The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
  final pulumi.Input<double> threshold;
  /// Defines an identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [RateLimitArgs].
  /// [action] The action to perform when the threshold of matched traffic within the configured period is exceeded.
  /// [match] Determines which traffic the rate limit counts towards the threshold.
  /// [period] The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
  /// [threshold] The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
  /// [zoneId] Defines an identifier.
  const RateLimitArgs({
    required this.action,
    required this.match,
    required this.period,
    required this.threshold,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<RateLimitAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': pulumi.Input.mapInputValue<RateLimitMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'period': period,
      'threshold': threshold,
      'zoneId': zoneId,
    };
  }

  factory RateLimitArgs.fromMap(Map<String, dynamic> map) {
    return RateLimitArgs(
      action: pulumi.Input.fromValue(RateLimitAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      match: pulumi.Input.fromValue(RateLimitMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
      period: pulumi.Input.fromValue((map['period'] as num).toDouble()),
      threshold: pulumi.Input.fromValue((map['threshold'] as num).toDouble()),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
