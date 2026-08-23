// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_job_provision_on_demand_parameter.dart';

/// {@template pulumi_index_synchronization_job_provision_on_demand_synchronization_job_provision_on_demand_args_doc}
/// The set of arguments for SynchronizationJobProvisionOnDemand.
/// {@endtemplate}
/// {@macro pulumi_index_synchronization_job_provision_on_demand_synchronization_job_provision_on_demand_args_doc}
class SynchronizationJobProvisionOnDemandArgs {
  /// One or more `parameter` blocks as documented below.
  final pulumi.Input<List<SynchronizationJobProvisionOnDemandParameter>> parameters;
  /// The ID of the service principal for the synchronization job.
  final pulumi.Input<String> servicePrincipalId;
  /// The ID of the synchronization job.
  final pulumi.Input<String> synchronizationJobId;
  /// Map of arbitrary keys and values that, when changed, will trigger a re-invocation. To force a re-invocation without changing these keys/values, use the `terraform taint` command.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [SynchronizationJobProvisionOnDemandArgs].
  /// [parameters] One or more `parameter` blocks as documented below.
  /// [servicePrincipalId] The ID of the service principal for the synchronization job.
  /// [synchronizationJobId] The ID of the synchronization job.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a re-invocation. To force a re-invocation without changing these keys/values, use the `terraform taint` command.
  const SynchronizationJobProvisionOnDemandArgs({
    required this.parameters,
    required this.servicePrincipalId,
    required this.synchronizationJobId,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': pulumi.Input.mapInputValue<List<SynchronizationJobProvisionOnDemandParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<SynchronizationJobProvisionOnDemandParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalId': servicePrincipalId,
      'synchronizationJobId': synchronizationJobId,
      'triggers': ?triggers,
    };
  }

  factory SynchronizationJobProvisionOnDemandArgs.fromMap(Map<String, dynamic> map) {
    return SynchronizationJobProvisionOnDemandArgs(
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<SynchronizationJobProvisionOnDemandParameter>(map['parameters']!, (value) => SynchronizationJobProvisionOnDemandParameter.fromMap((value as Map).cast<String, dynamic>()))),
      servicePrincipalId: pulumi.Input.fromValue(map['servicePrincipalId'] as String),
      synchronizationJobId: pulumi.Input.fromValue(map['synchronizationJobId'] as String),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
