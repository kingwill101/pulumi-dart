// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutineRoutineReference {
  /// Optional. The dataset ID of the routine.
  final pulumi.Input<String?>? datasetId;
  /// Optional. The project ID of the routine.
  final pulumi.Input<String?>? projectId;
  /// Optional. The routine ID of the routine.
  ///
  /// &lt;a name="nestedDataAnalyticsAgentLastPublishedContext"&gt;&lt;/a&gt;The `lastPublishedContext` block contains:
  final pulumi.Input<String?>? routineId;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutineRoutineReference].
  /// [datasetId] Optional. The dataset ID of the routine.
  /// [projectId] Optional. The project ID of the routine.
  /// [routineId] Optional. The routine ID of the routine.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutineRoutineReference({
    this.datasetId,
    this.projectId,
    this.routineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'projectId': ?projectId,
      'routineId': ?routineId,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutineRoutineReference.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctionsBqRoutineRoutineReference(
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routineId: (() { final guardedValue = map['routineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
