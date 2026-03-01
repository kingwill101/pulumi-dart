// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_settings_transaction_tracer_explain_query_plan.dart';
import 'application_settings_transaction_tracer_sql.dart';

class ApplicationSettingsTransactionTracer {
  /// Configuration block for query plans. Including this block enables the capture of query plans. The following arguments are supported:
  final List<ApplicationSettingsTransactionTracerExplainQueryPlan>? explainQueryPlans;
  /// Configuration block for SQL logging.  Including this block enables SQL logging. The following arguments are supported:
  final ApplicationSettingsTransactionTracerSql? sql;
  /// The response time threshold for collecting stack traces.
  final double? stackTraceThresholdValue;
  /// The type of threshold for transactions. Valid values are `VALUE`,`APDEX_F`(4 times your apdex target)
  final String? transactionThresholdType;
  /// The threshold value for transactions(in seconds).
  final double? transactionThresholdValue;

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
      'explainQueryPlans': ?explainQueryPlans == null ? null : pulumi.Input.encodeList<ApplicationSettingsTransactionTracerExplainQueryPlan, Map<String, dynamic>>(explainQueryPlans!, (value) => value.toMap()),
      'sql': ?sql == null ? null : sql!.toMap(),
      'stackTraceThresholdValue': ?stackTraceThresholdValue,
      'transactionThresholdType': ?transactionThresholdType,
      'transactionThresholdValue': ?transactionThresholdValue,
    };
  }

  factory ApplicationSettingsTransactionTracer.fromMap(Map<String, dynamic> map) {
    return ApplicationSettingsTransactionTracer(
      explainQueryPlans: map['explainQueryPlans'] == null ? null : pulumi.Input.decodeList<ApplicationSettingsTransactionTracerExplainQueryPlan>(map['explainQueryPlans'], (value) => ApplicationSettingsTransactionTracerExplainQueryPlan.fromMap((value as Map).cast<String, dynamic>())),
      sql: map['sql'] == null ? null : ApplicationSettingsTransactionTracerSql.fromMap((map['sql'] as Map).cast<String, dynamic>()),
      stackTraceThresholdValue: map['stackTraceThresholdValue'] == null ? null : map['stackTraceThresholdValue'] as double,
      transactionThresholdType: map['transactionThresholdType'] == null ? null : map['transactionThresholdType'] as String,
      transactionThresholdValue: map['transactionThresholdValue'] == null ? null : map['transactionThresholdValue'] as double,
    );
  }
}

