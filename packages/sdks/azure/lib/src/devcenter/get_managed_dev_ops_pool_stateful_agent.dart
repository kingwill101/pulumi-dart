// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_dev_ops_pool_stateful_agent_automatic_resource_prediction.dart';
import 'get_managed_dev_ops_pool_stateful_agent_manual_resource_prediction.dart';

class GetManagedDevOpsPoolStatefulAgent {
  /// An `automaticResourcePrediction` block as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction>> automaticResourcePredictions;
  /// The amount of time an agent in a `stateful` pool waits for new jobs before shutting down after all current and queued jobs are complete.
  final pulumi.Input<String> gracePeriodTimeSpan;
  /// A `manualResourcePrediction` block as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatefulAgentManualResourcePrediction>> manualResourcePredictions;
  /// The maximum duration an agent in a `stateful` pool can run before it is shut down and discarded.
  final pulumi.Input<String> maximumAgentLifetime;

  /// Creates a new [GetManagedDevOpsPoolStatefulAgent].
  /// [automaticResourcePredictions] An `automaticResourcePrediction` block as defined below.
  /// [gracePeriodTimeSpan] The amount of time an agent in a `stateful` pool waits for new jobs before shutting down after all current and queued jobs are complete.
  /// [manualResourcePredictions] A `manualResourcePrediction` block as defined below.
  /// [maximumAgentLifetime] The maximum duration an agent in a `stateful` pool can run before it is shut down and discarded.
  const GetManagedDevOpsPoolStatefulAgent({
    required this.automaticResourcePredictions,
    required this.gracePeriodTimeSpan,
    required this.manualResourcePredictions,
    required this.maximumAgentLifetime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResourcePredictions': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction>, List<Map<String, dynamic>>>(automaticResourcePredictions, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gracePeriodTimeSpan': gracePeriodTimeSpan,
      'manualResourcePredictions': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatefulAgentManualResourcePrediction>, List<Map<String, dynamic>>>(manualResourcePredictions, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePrediction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maximumAgentLifetime': maximumAgentLifetime,
    };
  }

  factory GetManagedDevOpsPoolStatefulAgent.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolStatefulAgent(
      automaticResourcePredictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction>(map['automaticResourcePredictions']!, (value) => GetManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction.fromMap((value as Map).cast<String, dynamic>()))),
      gracePeriodTimeSpan: pulumi.Input.fromValue(map['gracePeriodTimeSpan'] as String),
      manualResourcePredictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePrediction>(map['manualResourcePredictions']!, (value) => GetManagedDevOpsPoolStatefulAgentManualResourcePrediction.fromMap((value as Map).cast<String, dynamic>()))),
      maximumAgentLifetime: pulumi.Input.fromValue(map['maximumAgentLifetime'] as String),
    );
  }
}
