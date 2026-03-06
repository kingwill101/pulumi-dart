// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_resource_status_instance_schedule_policy_status_response.dart';

/// Contains output only fields. Use this sub-message for all output fields set on ResourcePolicy. The internal structure of this "status" field should mimic the structure of ResourcePolicy proto specification.
class ResourcePolicyResourceStatusResponse {
  /// Specifies a set of output values reffering to the instance_schedule_policy system status. This field should have the same name as corresponding policy field.
  final pulumi.Input<ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponse> instanceSchedulePolicy;

  /// Creates a new [ResourcePolicyResourceStatusResponse].
  /// [instanceSchedulePolicy] Specifies a set of output values reffering to the instance_schedule_policy system status. This field should have the same name as corresponding policy field.
  const ResourcePolicyResourceStatusResponse({
    required this.instanceSchedulePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSchedulePolicy': pulumi.Input.mapInputValue<ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponse, Map<String, dynamic>>(instanceSchedulePolicy, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyResourceStatusResponse(
      instanceSchedulePolicy: pulumi.Input.fromValue(ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponse.fromMap((map['instanceSchedulePolicy']! as Map).cast<String, dynamic>())),
    );
  }
}

