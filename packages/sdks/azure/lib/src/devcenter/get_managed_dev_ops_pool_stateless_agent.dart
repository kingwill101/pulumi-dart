// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_dev_ops_pool_stateless_agent_automatic_resource_prediction.dart';
import 'get_managed_dev_ops_pool_stateless_agent_manual_resource_prediction.dart';

class GetManagedDevOpsPoolStatelessAgent {
  /// An `automaticResourcePrediction` block as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction>> automaticResourcePredictions;
  /// A `manualResourcePrediction` block as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatelessAgentManualResourcePrediction>> manualResourcePredictions;

  /// Creates a new [GetManagedDevOpsPoolStatelessAgent].
  /// [automaticResourcePredictions] An `automaticResourcePrediction` block as defined below.
  /// [manualResourcePredictions] A `manualResourcePrediction` block as defined below.
  const GetManagedDevOpsPoolStatelessAgent({
    required this.automaticResourcePredictions,
    required this.manualResourcePredictions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResourcePredictions': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction>, List<Map<String, dynamic>>>(automaticResourcePredictions, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manualResourcePredictions': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatelessAgentManualResourcePrediction>, List<Map<String, dynamic>>>(manualResourcePredictions, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePrediction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedDevOpsPoolStatelessAgent.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolStatelessAgent(
      automaticResourcePredictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction>(map['automaticResourcePredictions']!, (value) => GetManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction.fromMap((value as Map).cast<String, dynamic>()))),
      manualResourcePredictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePrediction>(map['manualResourcePredictions']!, (value) => GetManagedDevOpsPoolStatelessAgentManualResourcePrediction.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
