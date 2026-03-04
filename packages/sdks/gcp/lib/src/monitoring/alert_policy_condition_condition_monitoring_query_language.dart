// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_condition_condition_monitoring_query_language_trigger.dart';

class AlertPolicyConditionConditionMonitoringQueryLanguage {
  /// The amount of time that a time series must
  /// violate the threshold to be considered
  /// failing. Currently, only values that are a
  /// multiple of a minute--e.g., 0, 60, 120, or
  /// 300 seconds--are supported. If an invalid
  /// value is given, an error will be returned.
  /// When choosing a duration, it is useful to
  /// keep in mind the frequency of the underlying
  /// time series data (which may also be affected
  /// by any alignments specified in the
  /// aggregations field); a good duration is long
  /// enough so that a single outlier does not
  /// generate spurious alerts, but short enough
  /// that unhealthy states are detected and
  /// alerted on quickly.
  final pulumi.Input<String> duration;

  /// A condition control that determines how
  /// metric-threshold conditions are evaluated when
  /// data stops arriving.
  /// Possible values are: `EVALUATION_MISSING_DATA_INACTIVE`, `EVALUATION_MISSING_DATA_ACTIVE`, `EVALUATION_MISSING_DATA_NO_OP`.
  final pulumi.Input<String>? evaluationMissingData;

  /// Monitoring Query Language query that outputs a boolean stream.
  final pulumi.Input<String> query;

  /// The number/percent of time series for which
  /// the comparison must hold in order for the
  /// condition to trigger. If unspecified, then
  /// the condition will trigger if the comparison
  /// is true for any of the time series that have
  /// been identified by filter and aggregations,
  /// or by the ratio, if denominator_filter and
  /// denominator_aggregations are specified.
  /// Structure is documented below.
  final pulumi.Input<
    AlertPolicyConditionConditionMonitoringQueryLanguageTrigger
  >?
  trigger;

  /// Creates a new [AlertPolicyConditionConditionMonitoringQueryLanguage].
  /// [duration] The amount of time that a time series must
  /// [evaluationMissingData] A condition control that determines how
  /// [query] Monitoring Query Language query that outputs a boolean stream.
  /// [trigger] The number/percent of time series for which
  AlertPolicyConditionConditionMonitoringQueryLanguage({
    required this.duration,
    this.evaluationMissingData,
    required this.query,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'evaluationMissingData': ?evaluationMissingData,
      'query': query,
      'trigger':
          ?pulumi.Input.mapOptionalInputValue<
            AlertPolicyConditionConditionMonitoringQueryLanguageTrigger,
            Map<String, dynamic>
          >(trigger, (value) => value.toMap()),
    };
  }

  factory AlertPolicyConditionConditionMonitoringQueryLanguage.fromMap(
    Map<String, dynamic> map,
  ) {
    return AlertPolicyConditionConditionMonitoringQueryLanguage(
      duration: pulumi.Input.fromValue(map['duration'] as String),
      evaluationMissingData: (() {
        final guardedValue = map['evaluationMissingData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      trigger: (() {
        final guardedValue = map['trigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertPolicyConditionConditionMonitoringQueryLanguageTrigger.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
