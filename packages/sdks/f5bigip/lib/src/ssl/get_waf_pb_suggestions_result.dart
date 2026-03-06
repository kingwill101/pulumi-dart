// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWafPbSuggestions.
class GetWafPbSuggestionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Json string representing exported PB suggestions ready to be used in WAF policy declaration
  final String json;
  final int minimumLearningScore;
  final String partition;
  /// System generated id of the WAF policy
  final String policyId;
  final String policyName;

  /// Creates a new [GetWafPbSuggestionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [json] Json string representing exported PB suggestions ready to be used in WAF policy declaration
  /// [minimumLearningScore] Required.
  /// [partition] Required.
  /// [policyId] System generated id of the WAF policy
  /// [policyName] Required.
  const GetWafPbSuggestionsResult({
    required this.id,
    required this.json,
    required this.minimumLearningScore,
    required this.partition,
    required this.policyId,
    required this.policyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'json': json,
      'minimumLearningScore': minimumLearningScore,
      'partition': partition,
      'policyId': policyId,
      'policyName': policyName,
    };
  }

  factory GetWafPbSuggestionsResult.fromMap(Map<String, dynamic> map) {
    return GetWafPbSuggestionsResult(
      id: map['id'] as String,
      json: map['json'] as String,
      minimumLearningScore: map['minimumLearningScore'] as int,
      partition: map['partition'] as String,
      policyId: map['policyId'] as String,
      policyName: map['policyName'] as String,
    );
  }
}

