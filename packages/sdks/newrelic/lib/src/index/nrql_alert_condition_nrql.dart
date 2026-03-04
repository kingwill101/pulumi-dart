// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NrqlAlertConditionNrql {
  /// The New Relic account ID to use as the basis for the NRQL alert condition's `query`; will default to `account_id` if unspecified.
  final pulumi.Input<String>? dataAccountId;

  /// NRQL queries are evaluated in one-minute time windows. The start time depends on the value you provide in the NRQL condition's `evaluation_offset`.
  final pulumi.Input<int>? evaluationOffset;
  final pulumi.Input<String> query;

  /// NRQL queries are evaluated in one-minute time windows. The start time depends on the value you provide in the NRQL condition's `since_value`.
  final pulumi.Input<String>? sinceValue;

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
      dataAccountId: (() {
        final guardedValue = map['dataAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      evaluationOffset: (() {
        final guardedValue = map['evaluationOffset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      sinceValue: (() {
        final guardedValue = map['sinceValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
