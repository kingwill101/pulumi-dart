// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_logging_config_log_to_big_query.dart';

class PreventionContentPolicyLoggingConfig {
  /// Log actions to BigQuery.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyLoggingConfigLogToBigQuery?>? logToBigQuery;

  /// Creates a new [PreventionContentPolicyLoggingConfig].
  /// [logToBigQuery] Log actions to BigQuery.
  const PreventionContentPolicyLoggingConfig({
    this.logToBigQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logToBigQuery': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyLoggingConfigLogToBigQuery, Map<String, dynamic>>(logToBigQuery, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyLoggingConfig.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyLoggingConfig(
      logToBigQuery: (() { final guardedValue = map['logToBigQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyLoggingConfigLogToBigQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
