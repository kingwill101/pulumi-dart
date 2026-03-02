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
    this.parameters,
    this.servicePrincipalId,
    this.synchronizationJobId,
    this.triggers,
  });

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
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<SynchronizationJobProvisionOnDemandParameter>(map['parameters']!, (value) => SynchronizationJobProvisionOnDemandParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : (map['servicePrincipalId']! as String).input(),
      synchronizationJobId: map['synchronizationJobId'] == null ? null : (map['synchronizationJobId']! as String).input(),
      triggers: map['triggers'] == null ? null : ((map['triggers']! as Map).cast<String, String>()).input(),
    );
  }
}

