// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_access_control_trigger_open_authentication_policy.dart';

class WorkflowAccessControlTrigger {
  /// A list of the allowed caller IP address ranges.
  final pulumi.Input<List<String>>? allowedCallerIpAddressRanges;
  /// A `openAuthenticationPolicy` block as defined below.
  final pulumi.Input<List<WorkflowAccessControlTriggerOpenAuthenticationPolicy>>? openAuthenticationPolicies;

  /// Creates a new [WorkflowAccessControlTrigger].
  /// [allowedCallerIpAddressRanges] A list of the allowed caller IP address ranges.
  /// [openAuthenticationPolicies] A `openAuthenticationPolicy` block as defined below.
  const WorkflowAccessControlTrigger({
    this.allowedCallerIpAddressRanges,
    this.openAuthenticationPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCallerIpAddressRanges': ?allowedCallerIpAddressRanges,
      'openAuthenticationPolicies': ?pulumi.Input.mapOptionalInputValue<List<WorkflowAccessControlTriggerOpenAuthenticationPolicy>, List<Map<String, dynamic>>>(openAuthenticationPolicies, (value) => pulumi.Input.encodeList<WorkflowAccessControlTriggerOpenAuthenticationPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkflowAccessControlTrigger.fromMap(Map<String, dynamic> map) {
    return WorkflowAccessControlTrigger(
      allowedCallerIpAddressRanges: (() { final guardedValue = map['allowedCallerIpAddressRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      openAuthenticationPolicies: (() { final guardedValue = map['openAuthenticationPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowAccessControlTriggerOpenAuthenticationPolicy>(guardedValue, (value) => WorkflowAccessControlTriggerOpenAuthenticationPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
