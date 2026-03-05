// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_config_response.dart';
import 'approval_result_response.dart';

/// BuildApproval describes a build's approval configuration, state, and result.
class BuildApprovalResponse {
  /// Configuration for manual approval of this build.
  final pulumi.Input<ApprovalConfigResponse> config;
  /// Result of manual approval for this Build.
  final pulumi.Input<ApprovalResultResponse> result;
  /// The state of this build's approval.
  final pulumi.Input<String> state;

  /// Creates a new [BuildApprovalResponse].
  /// [config] Configuration for manual approval of this build.
  /// [result] Result of manual approval for this Build.
  /// [state] The state of this build's approval.
  BuildApprovalResponse({
    required this.config,
    required this.result,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<ApprovalConfigResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'result': pulumi.Input.mapInputValue<ApprovalResultResponse, Map<String, dynamic>>(result, (value) => value.toMap()),
      'state': state,
    };
  }

  factory BuildApprovalResponse.fromMap(Map<String, dynamic> map) {
    return BuildApprovalResponse(
      config: pulumi.Input.fromValue(ApprovalConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>())),
      result: pulumi.Input.fromValue(ApprovalResultResponse.fromMap((map['result']! as Map).cast<String, dynamic>())),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

