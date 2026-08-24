// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rate_limits_result_action.dart';
import 'get_rate_limits_result_bypass.dart';
import 'get_rate_limits_result_match.dart';

class GetRateLimitsResult {
  /// The action to perform when the threshold of matched traffic within the configured period is exceeded.
  final pulumi.Input<GetRateLimitsResultAction> action;
  /// Criteria specifying when the current rate limit should be bypassed. You can specify that the rate limit should not apply to one or more URLs.
  final pulumi.Input<List<GetRateLimitsResultBypass>> bypasses;
  /// An informative summary of the rule. This value is sanitized and any tags will be removed.
  final pulumi.Input<String> description;
  /// When true, indicates that the rate limit is currently disabled.
  final pulumi.Input<bool> disabled;
  /// The unique identifier of the rate limit.
  final pulumi.Input<String> id;
  /// Determines which traffic the rate limit counts towards the threshold.
  final pulumi.Input<GetRateLimitsResultMatch> match;
  /// The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
  final pulumi.Input<double> period;
  /// The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
  final pulumi.Input<double> threshold;

  /// Creates a new [GetRateLimitsResult].
  /// [action] The action to perform when the threshold of matched traffic within the configured period is exceeded.
  /// [bypasses] Criteria specifying when the current rate limit should be bypassed. You can specify that the rate limit should not apply to one or more URLs.
  /// [description] An informative summary of the rule. This value is sanitized and any tags will be removed.
  /// [disabled] When true, indicates that the rate limit is currently disabled.
  /// [id] The unique identifier of the rate limit.
  /// [match] Determines which traffic the rate limit counts towards the threshold.
  /// [period] The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
  /// [threshold] The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
  const GetRateLimitsResult({
    required this.action,
    required this.bypasses,
    required this.description,
    required this.disabled,
    required this.id,
    required this.match,
    required this.period,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<GetRateLimitsResultAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'bypasses': pulumi.Input.mapInputValue<List<GetRateLimitsResultBypass>, List<Map<String, dynamic>>>(bypasses, (value) => pulumi.Input.encodeList<GetRateLimitsResultBypass, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'disabled': disabled,
      'id': id,
      'match': pulumi.Input.mapInputValue<GetRateLimitsResultMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'period': period,
      'threshold': threshold,
    };
  }

  factory GetRateLimitsResult.fromMap(Map<String, dynamic> map) {
    return GetRateLimitsResult(
      action: pulumi.Input.fromValue(GetRateLimitsResultAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      bypasses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRateLimitsResultBypass>(map['bypasses']!, (value) => GetRateLimitsResultBypass.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      match: pulumi.Input.fromValue(GetRateLimitsResultMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
      period: pulumi.Input.fromValue((map['period'] as num).toDouble()),
      threshold: pulumi.Input.fromValue((map['threshold'] as num).toDouble()),
    );
  }
}
