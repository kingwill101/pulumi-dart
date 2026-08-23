// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_dev_ops_pool_stateless_agent_automatic_resource_prediction.dart';
import 'managed_dev_ops_pool_stateless_agent_manual_resource_prediction.dart';

class ManagedDevOpsPoolStatelessAgent {
  /// An `automaticResourcePrediction` block as defined below.
  final pulumi.Input<ManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction>? automaticResourcePrediction;
  /// A `manualResourcePrediction` block as defined below.
  ///
  /// &gt; **Note:** Exactly one of `manualResourcePrediction` or `automaticResourcePrediction` may be specified.
  final pulumi.Input<ManagedDevOpsPoolStatelessAgentManualResourcePrediction>? manualResourcePrediction;

  /// Creates a new [ManagedDevOpsPoolStatelessAgent].
  /// [automaticResourcePrediction] An `automaticResourcePrediction` block as defined below.
  /// [manualResourcePrediction] A `manualResourcePrediction` block as defined below.
  const ManagedDevOpsPoolStatelessAgent({
    this.automaticResourcePrediction,
    this.manualResourcePrediction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResourcePrediction': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction, Map<String, dynamic>>(automaticResourcePrediction, (value) => value.toMap()),
      'manualResourcePrediction': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolStatelessAgentManualResourcePrediction, Map<String, dynamic>>(manualResourcePrediction, (value) => value.toMap()),
    };
  }

  factory ManagedDevOpsPoolStatelessAgent.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolStatelessAgent(
      automaticResourcePrediction: (() { final guardedValue = map['automaticResourcePrediction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      manualResourcePrediction: (() { final guardedValue = map['manualResourcePrediction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolStatelessAgentManualResourcePrediction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
