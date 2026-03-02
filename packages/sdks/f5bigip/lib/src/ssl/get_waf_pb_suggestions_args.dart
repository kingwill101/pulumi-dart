// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssl_get_waf_pb_suggestions_get_waf_pb_suggestions_args_doc}
/// Arguments for getWafPbSuggestions.
/// {@endtemplate}
/// {@macro pulumi_ssl_get_waf_pb_suggestions_get_waf_pb_suggestions_args_doc}
class GetWafPbSuggestionsArgs {
  /// The minimum learning score for suggestions.
  final pulumi.Input<int> minimumLearningScore;
  /// Partition on which WAF policy is located.
  final pulumi.Input<String> partition;
  /// System generated id of the WAF policy
  final pulumi.Input<String>? policyId;
  /// WAF policy name from which PB suggestions should be exported.
  final pulumi.Input<String> policyName;

  /// Creates a new [GetWafPbSuggestionsArgs].
  /// [minimumLearningScore] The minimum learning score for suggestions.
  /// [partition] Partition on which WAF policy is located.
  /// [policyId] System generated id of the WAF policy
  /// [policyName] WAF policy name from which PB suggestions should be exported.
  GetWafPbSuggestionsArgs({
    required this.minimumLearningScore,
    required this.partition,
    this.policyId,
    required this.policyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumLearningScore': minimumLearningScore,
      'partition': partition,
      'policyId': ?policyId,
      'policyName': policyName,
    };
  }

  factory GetWafPbSuggestionsArgs.fromMap(Map<String, dynamic> map) {
    return GetWafPbSuggestionsArgs(
      minimumLearningScore: (map['minimumLearningScore'] as int).input(),
      partition: (map['partition'] as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId'] as String).input(),
      policyName: (map['policyName'] as String).input(),
    );
  }
}

