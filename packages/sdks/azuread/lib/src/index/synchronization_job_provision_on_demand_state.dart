// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_job_provision_on_demand_parameter.dart';

/// Input properties used for looking up and filtering SynchronizationJobProvisionOnDemand resources.
class SynchronizationJobProvisionOnDemandState {
  /// One or more `parameter` blocks as documented below.
  final pulumi.Input<List<SynchronizationJobProvisionOnDemandParameter>>? parameters;
  /// The ID of the service principal for the synchronization job.
  final pulumi.Input<String>? servicePrincipalId;
  /// The ID of the synchronization job.
  final pulumi.Input<String>? synchronizationJobId;
  /// Map of arbitrary keys and values that, when changed, will trigger a re-invocation. To force a re-invocation without changing these keys/values, use the `terraform taint` command.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [SynchronizationJobProvisionOnDemandState].
  /// [parameters] One or more `parameter` blocks as documented below.
  /// [servicePrincipalId] The ID of the service principal for the synchronization job.
  /// [synchronizationJobId] The ID of the synchronization job.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a re-invocation. To force a re-invocation without changing these keys/values, use the `terraform taint` command.
  SynchronizationJobProvisionOnDemandState({
    pulumi.Output<List<SynchronizationJobProvisionOnDemandParameter>>? parameters,
    pulumi.Output<String>? servicePrincipalId,
    pulumi.Output<String>? synchronizationJobId,
    pulumi.Output<Map<String, String>>? triggers,
  }) :
      parameters = pulumi.Input.asOptionalInput<List<SynchronizationJobProvisionOnDemandParameter>>(parameters),
      servicePrincipalId = pulumi.Input.asOptionalInput<String>(servicePrincipalId),
      synchronizationJobId = pulumi.Input.asOptionalInput<String>(synchronizationJobId),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<SynchronizationJobProvisionOnDemandParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<SynchronizationJobProvisionOnDemandParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalId': ?servicePrincipalId,
      'synchronizationJobId': ?synchronizationJobId,
      'triggers': ?triggers,
    };
  }

  factory SynchronizationJobProvisionOnDemandState.fromMap(Map<String, dynamic> map) {
    return SynchronizationJobProvisionOnDemandState(
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<SynchronizationJobProvisionOnDemandParameter>>(pulumi.Input.decodeList<SynchronizationJobProvisionOnDemandParameter>(map['parameters'], (value) => SynchronizationJobProvisionOnDemandParameter.fromMap((value as Map).cast<String, dynamic>()))),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : pulumi.Output.create<String>(map['servicePrincipalId'] as String),
      synchronizationJobId: map['synchronizationJobId'] == null ? null : pulumi.Output.create<String>(map['synchronizationJobId'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
    );
  }
}

