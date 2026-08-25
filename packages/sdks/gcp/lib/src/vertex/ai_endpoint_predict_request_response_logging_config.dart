// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_predict_request_response_logging_config_bigquery_destination.dart';

class AiEndpointPredictRequestResponseLoggingConfig {
  /// BigQuery table for logging. If only given a project, a new dataset will be created with name `logging_&lt;endpoint-display-name&gt;_&lt;endpoint-id&gt;` where will be made BigQuery-dataset-name compatible (e.g. most special characters will become underscores). If no table name is given, a new table will be created with name `requestResponseLogging`
  /// Structure is documented below.
  final pulumi.Input<AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination?>? bigqueryDestination;
  /// If logging is enabled or not.
  final pulumi.Input<bool?>? enabled;
  /// Percentage of requests to be logged, expressed as a fraction in range(0,1]
  final pulumi.Input<double?>? samplingRate;

  /// Creates a new [AiEndpointPredictRequestResponseLoggingConfig].
  /// [bigqueryDestination] BigQuery table for logging. If only given a project, a new dataset will be created with name `logging_&lt;endpoint-display-name&gt;_&lt;endpoint-id&gt;` where will be made BigQuery-dataset-name compatible (e.g. most special characters will become underscores). If no table name is given, a new table will be created with name `requestResponseLogging`
  /// [enabled] If logging is enabled or not.
  /// [samplingRate] Percentage of requests to be logged, expressed as a fraction in range(0,1]
  const AiEndpointPredictRequestResponseLoggingConfig({
    this.bigqueryDestination,
    this.enabled,
    this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestination': ?pulumi.Input.mapOptionalInputValue<AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination, Map<String, dynamic>>(bigqueryDestination, (value) => value.toMap()),
      'enabled': ?enabled,
      'samplingRate': ?samplingRate,
    };
  }

  factory AiEndpointPredictRequestResponseLoggingConfig.fromMap(Map<String, dynamic> map) {
    return AiEndpointPredictRequestResponseLoggingConfig(
      bigqueryDestination: (() { final guardedValue = map['bigqueryDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      samplingRate: (() { final guardedValue = map['samplingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
