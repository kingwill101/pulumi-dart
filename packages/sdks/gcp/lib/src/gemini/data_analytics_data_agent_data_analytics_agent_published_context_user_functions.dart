// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_user_functions_bq_routine.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctions {
  /// Optional. A list of BigQuery routines to include in the context.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutine>?>? bqRoutines;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctions].
  /// [bqRoutines] Optional. A list of BigQuery routines to include in the context.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctions({
    this.bqRoutines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bqRoutines': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutine>, List<Map<String, dynamic>>>(bqRoutines, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutine, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctions.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctions(
      bqRoutines: (() { final guardedValue = map['bqRoutines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutine>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutine.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
