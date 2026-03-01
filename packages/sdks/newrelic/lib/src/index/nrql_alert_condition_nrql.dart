// ignore_for_file: unused_element, unnecessary_cast


class NrqlAlertConditionNrql {
  /// The New Relic account ID to use as the basis for the NRQL alert condition's `query`; will default to `account_id` if unspecified.
  final String? dataAccountId;
  /// NRQL queries are evaluated in one-minute time windows. The start time depends on the value you provide in the NRQL condition's `evaluation_offset`.
  final int? evaluationOffset;
  final String query;
  /// NRQL queries are evaluated in one-minute time windows. The start time depends on the value you provide in the NRQL condition's `since_value`.
  final String? sinceValue;

  /// Creates a new [NrqlAlertConditionNrql].
  /// [dataAccountId] The New Relic account ID to use as the basis for the NRQL alert condition's `query`; will default to `account_id` if unspecified.
  /// [evaluationOffset] NRQL queries are evaluated in one-minute time windows. The start time depends on the value you provide in the NRQL condition's `evaluation_offset`.
  /// [query] Required.
  /// [sinceValue] NRQL queries are evaluated in one-minute time windows. The start time depends on the value you provide in the NRQL condition's `since_value`.
  NrqlAlertConditionNrql({
    this.dataAccountId,
    this.evaluationOffset,
    required this.query,
    this.sinceValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAccountId': ?dataAccountId,
      'evaluationOffset': ?evaluationOffset,
      'query': query,
      'sinceValue': ?sinceValue,
    };
  }

  factory NrqlAlertConditionNrql.fromMap(Map<String, dynamic> map) {
    return NrqlAlertConditionNrql(
      dataAccountId: map['dataAccountId'] == null ? null : map['dataAccountId'] as String,
      evaluationOffset: map['evaluationOffset'] == null ? null : map['evaluationOffset'] as int,
      query: map['query'] as String,
      sinceValue: map['sinceValue'] == null ? null : map['sinceValue'] as String,
    );
  }
}

