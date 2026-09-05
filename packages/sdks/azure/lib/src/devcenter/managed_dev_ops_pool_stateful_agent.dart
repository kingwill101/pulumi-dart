// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_dev_ops_pool_stateful_agent_automatic_resource_prediction.dart';
import 'managed_dev_ops_pool_stateful_agent_manual_resource_prediction.dart';

class ManagedDevOpsPoolStatefulAgent {
  /// An `automaticResourcePrediction` block as defined below.
  final pulumi.Input<ManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction?>? automaticResourcePrediction;
  /// Configures the amount of time an agent in a `stateful` pool waits for new jobs before shutting down after all current and queued jobs are complete. The format for Grace Period is `dd.hh:mm:ss` or `hh:mm:ss`. Defaults to `00:00:00`.
  final pulumi.Input<String?>? gracePeriodTimeSpan;
  /// A `manualResourcePrediction` block as defined below.
  final pulumi.Input<ManagedDevOpsPoolStatefulAgentManualResourcePrediction?>? manualResourcePrediction;
  /// Configures the maximum duration an agent in a `stateful` pool can run before it is shut down and discarded. The format for Max time to live for standby agents is `dd.hh:mm:ss` or `hh:mm:ss`. Defaults to `7.00:00:00`.
  ///
  /// &gt; **Note:** Exactly one of `manualResourcePrediction` or `automaticResourcePrediction` may be specified.
  final pulumi.Input<String?>? maximumAgentLifetime;

  /// Creates a new [ManagedDevOpsPoolStatefulAgent].
  /// [automaticResourcePrediction] An `automaticResourcePrediction` block as defined below.
  /// [gracePeriodTimeSpan] Configures the amount of time an agent in a `stateful` pool waits for new jobs before shutting down after all current and queued jobs are complete. The format for Grace Period is `dd.hh:mm:ss` or `hh:mm:ss`. Defaults to `00:00:00`.
  /// [manualResourcePrediction] A `manualResourcePrediction` block as defined below.
  /// [maximumAgentLifetime] Configures the maximum duration an agent in a `stateful` pool can run before it is shut down and discarded. The format for Max time to live for standby agents is `dd.hh:mm:ss` or `hh:mm:ss`. Defaults to `7.00:00:00`.
  const ManagedDevOpsPoolStatefulAgent({
    this.automaticResourcePrediction,
    this.gracePeriodTimeSpan,
    this.manualResourcePrediction,
    this.maximumAgentLifetime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticResourcePrediction': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction, Map<String, dynamic>>(automaticResourcePrediction, (value) => value.toMap()),
      'gracePeriodTimeSpan': ?gracePeriodTimeSpan,
      'manualResourcePrediction': ?pulumi.Input.mapOptionalInputValue<ManagedDevOpsPoolStatefulAgentManualResourcePrediction, Map<String, dynamic>>(manualResourcePrediction, (value) => value.toMap()),
      'maximumAgentLifetime': ?maximumAgentLifetime,
    };
  }

  factory ManagedDevOpsPoolStatefulAgent.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolStatefulAgent(
      automaticResourcePrediction: (() { final guardedValue = map['automaticResourcePrediction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gracePeriodTimeSpan: (() { final guardedValue = map['gracePeriodTimeSpan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualResourcePrediction: (() { final guardedValue = map['manualResourcePrediction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDevOpsPoolStatefulAgentManualResourcePrediction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumAgentLifetime: (() { final guardedValue = map['maximumAgentLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
