// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_approver_definition_response.dart';

/// Managed application Jit access policy.
class ApplicationJitAccessPolicyResponse {
  /// Whether the JIT access is enabled.
  final pulumi.Input<bool> jitAccessEnabled;
  /// JIT approval mode.
  final pulumi.Input<String>? jitApprovalMode;
  /// The JIT approvers
  final pulumi.Input<List<JitApproverDefinitionResponse>>? jitApprovers;
  /// The maximum duration JIT access is granted. This is an ISO8601 time period value.
  final pulumi.Input<String>? maximumJitAccessDuration;

  /// Creates a new [ApplicationJitAccessPolicyResponse].
  /// [jitAccessEnabled] Whether the JIT access is enabled.
  /// [jitApprovalMode] JIT approval mode.
  /// [jitApprovers] The JIT approvers
  /// [maximumJitAccessDuration] The maximum duration JIT access is granted. This is an ISO8601 time period value.
  ApplicationJitAccessPolicyResponse({
    required this.jitAccessEnabled,
    this.jitApprovalMode,
    this.jitApprovers,
    this.maximumJitAccessDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jitAccessEnabled': jitAccessEnabled,
      'jitApprovalMode': ?jitApprovalMode,
      'jitApprovers': ?pulumi.Input.mapOptionalInputValue<List<JitApproverDefinitionResponse>, List<Map<String, dynamic>>>(jitApprovers, (value) => pulumi.Input.encodeList<JitApproverDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maximumJitAccessDuration': ?maximumJitAccessDuration,
    };
  }

  factory ApplicationJitAccessPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationJitAccessPolicyResponse(
      jitAccessEnabled: pulumi.Input.fromValue(map['jitAccessEnabled'] as bool),
      jitApprovalMode: (() { final guardedValue = map['jitApprovalMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jitApprovers: (() { final guardedValue = map['jitApprovers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JitApproverDefinitionResponse>(guardedValue, (value) => JitApproverDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maximumJitAccessDuration: (() { final guardedValue = map['maximumJitAccessDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

