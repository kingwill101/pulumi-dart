// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_user_functions_bq_routine_routine_reference.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutine {
  /// Optional. User override or addition to description, to tell the agent when to use the UDF.
  final pulumi.Input<String?>? description;
  /// Optional. The reference to the BigQuery routine.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutineRoutineReference?>? routineReference;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutine].
  /// [description] Optional. User override or addition to description, to tell the agent when to use the UDF.
  /// [routineReference] Optional. The reference to the BigQuery routine.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutine({
    this.description,
    this.routineReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'routineReference': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutineRoutineReference, Map<String, dynamic>>(routineReference, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutine.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutine(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routineReference: (() { final guardedValue = map['routineReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutineRoutineReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
