// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_resource_status_instance_schedule_policy_status_response_compute_beta.dart';

/// Contains output only fields. Use this sub-message for all output fields set on ResourcePolicy. The internal structure of this "status" field should mimic the structure of ResourcePolicy proto specification.
class ResourcePolicyResourceStatusResponseComputeBeta {
  /// Specifies a set of output values reffering to the instance_schedule_policy system status. This field should have the same name as corresponding policy field.
  final pulumi.Input<ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta> instanceSchedulePolicy;

  /// Creates a new [ResourcePolicyResourceStatusResponseComputeBeta].
  /// [instanceSchedulePolicy] Specifies a set of output values reffering to the instance_schedule_policy system status. This field should have the same name as corresponding policy field.
  const ResourcePolicyResourceStatusResponseComputeBeta({
    required this.instanceSchedulePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSchedulePolicy': pulumi.Input.mapInputValue<ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta, Map<String, dynamic>>(instanceSchedulePolicy, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyResourceStatusResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyResourceStatusResponseComputeBeta(
      instanceSchedulePolicy: pulumi.Input.fromValue(ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta.fromMap((map['instanceSchedulePolicy']! as Map).cast<String, dynamic>())),
    );
  }
}

