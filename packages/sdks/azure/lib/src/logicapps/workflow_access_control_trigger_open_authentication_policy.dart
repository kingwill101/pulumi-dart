// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_access_control_trigger_open_authentication_policy_claim.dart';

class WorkflowAccessControlTriggerOpenAuthenticationPolicy {
  /// A `claim` block as defined below.
  final pulumi.Input<List<WorkflowAccessControlTriggerOpenAuthenticationPolicyClaim>> claims;
  /// The OAuth policy name for the Logic App Workflow.
  final pulumi.Input<String> name;

  /// Creates a new [WorkflowAccessControlTriggerOpenAuthenticationPolicy].
  /// [claims] A `claim` block as defined below.
  /// [name] The OAuth policy name for the Logic App Workflow.
  WorkflowAccessControlTriggerOpenAuthenticationPolicy({
    required this.claims,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claims': pulumi.Input.mapInputValue<List<WorkflowAccessControlTriggerOpenAuthenticationPolicyClaim>, List<Map<String, dynamic>>>(claims, (value) => pulumi.Input.encodeList<WorkflowAccessControlTriggerOpenAuthenticationPolicyClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory WorkflowAccessControlTriggerOpenAuthenticationPolicy.fromMap(Map<String, dynamic> map) {
    return WorkflowAccessControlTriggerOpenAuthenticationPolicy(
      claims: (pulumi.Input.decodeList<WorkflowAccessControlTriggerOpenAuthenticationPolicyClaim>(map['claims'], (value) => WorkflowAccessControlTriggerOpenAuthenticationPolicyClaim.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

