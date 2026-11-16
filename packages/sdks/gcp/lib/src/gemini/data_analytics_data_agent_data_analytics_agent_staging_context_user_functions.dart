// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_user_functions_bq_routine.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctions {
  /// Optional. A list of BigQuery routines to include in the context.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutine>?>? bqRoutines;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctions].
  /// [bqRoutines] Optional. A list of BigQuery routines to include in the context.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctions({
    this.bqRoutines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bqRoutines': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutine>, List<Map<String, dynamic>>>(bqRoutines, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutine, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctions.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctions(
      bqRoutines: (() { final guardedValue = map['bqRoutines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutine>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutine.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
