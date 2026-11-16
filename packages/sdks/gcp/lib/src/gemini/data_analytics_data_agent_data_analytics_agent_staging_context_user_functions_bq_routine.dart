// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_user_functions_bq_routine_routine_reference.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutine {
  /// Optional. User override or addition to description, to tell the agent when to use the UDF.
  final pulumi.Input<String?>? description;
  /// Optional. The reference to the BigQuery routine.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutineRoutineReference?>? routineReference;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutine].
  /// [description] Optional. User override or addition to description, to tell the agent when to use the UDF.
  /// [routineReference] Optional. The reference to the BigQuery routine.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutine({
    this.description,
    this.routineReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'routineReference': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutineRoutineReference, Map<String, dynamic>>(routineReference, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutine.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutine(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routineReference: (() { final guardedValue = map['routineReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextUserFunctionsBqRoutineRoutineReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
