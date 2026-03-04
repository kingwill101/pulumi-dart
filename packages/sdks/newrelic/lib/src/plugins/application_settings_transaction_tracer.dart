// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_settings_transaction_tracer_explain_query_plan.dart';
import 'application_settings_transaction_tracer_sql.dart';

class ApplicationSettingsTransactionTracer {
  /// Configuration block for query plans. Including this block enables the capture of query plans. The following arguments are supported:
  final pulumi.Input<
    List<ApplicationSettingsTransactionTracerExplainQueryPlan>
  >?
  explainQueryPlans;

  /// Configuration block for SQL logging.  Including this block enables SQL logging. The following arguments are supported:
  final pulumi.Input<ApplicationSettingsTransactionTracerSql>? sql;

  /// The response time threshold for collecting stack traces.
  final pulumi.Input<double>? stackTraceThresholdValue;

  /// The type of threshold for transactions. Valid values are `VALUE`,`APDEX_F`(4 times your apdex target)
  final pulumi.Input<String>? transactionThresholdType;

  /// The threshold value for transactions(in seconds).
  final pulumi.Input<double>? transactionThresholdValue;

  /// Creates a new [ApplicationSettingsTransactionTracer].
  /// [explainQueryPlans] Configuration block for query plans. Including this block enables the capture of query plans. The following arguments are supported:
  /// [sql] Configuration block for SQL logging.  Including this block enables SQL logging. The following arguments are supported:
  /// [stackTraceThresholdValue] The response time threshold for collecting stack traces.
  /// [transactionThresholdType] The type of threshold for transactions. Valid values are `VALUE`,`APDEX_F`(4 times your apdex target)
  /// [transactionThresholdValue] The threshold value for transactions(in seconds).
  ApplicationSettingsTransactionTracer({
    this.explainQueryPlans,
    this.sql,
    this.stackTraceThresholdValue,
    this.transactionThresholdType,
    this.transactionThresholdValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explainQueryPlans':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationSettingsTransactionTracerExplainQueryPlan>,
            List<Map<String, dynamic>>
          >(
            explainQueryPlans,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationSettingsTransactionTracerExplainQueryPlan,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sql':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationSettingsTransactionTracerSql,
            Map<String, dynamic>
          >(sql, (value) => value.toMap()),
      'stackTraceThresholdValue': ?stackTraceThresholdValue,
      'transactionThresholdType': ?transactionThresholdType,
      'transactionThresholdValue': ?transactionThresholdValue,
    };
  }

  factory ApplicationSettingsTransactionTracer.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationSettingsTransactionTracer(
      explainQueryPlans: (() {
        final guardedValue = map['explainQueryPlans'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ApplicationSettingsTransactionTracerExplainQueryPlan
          >(
            guardedValue,
            (value) =>
                ApplicationSettingsTransactionTracerExplainQueryPlan.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      sql: (() {
        final guardedValue = map['sql'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationSettingsTransactionTracerSql.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      stackTraceThresholdValue: (() {
        final guardedValue = map['stackTraceThresholdValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      transactionThresholdType: (() {
        final guardedValue = map['transactionThresholdType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transactionThresholdValue: (() {
        final guardedValue = map['transactionThresholdValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
