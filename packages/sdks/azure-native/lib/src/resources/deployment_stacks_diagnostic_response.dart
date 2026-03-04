// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_additional_info_response.dart';

/// The error additional info
class DeploymentStacksDiagnosticResponse {
  /// Additional error information.
  final pulumi.Input<List<ErrorAdditionalInfoResponse>>? additionalInfo;

  /// The error code.
  final pulumi.Input<String> code;

  /// Denotes the additional response level.
  final pulumi.Input<String> level;

  /// The error message.
  final pulumi.Input<String> message;

  /// The error target.
  final pulumi.Input<String>? target;

  /// Creates a new [DeploymentStacksDiagnosticResponse].
  /// [additionalInfo] Additional error information.
  /// [code] The error code.
  /// [level] Denotes the additional response level.
  /// [message] The error message.
  /// [target] The error target.
  DeploymentStacksDiagnosticResponse({
    this.additionalInfo,
    required this.code,
    required this.level,
    required this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo':
          ?pulumi.Input.mapOptionalInputValue<
            List<ErrorAdditionalInfoResponse>,
            List<Map<String, dynamic>>
          >(
            additionalInfo,
            (value) =>
                pulumi.Input.encodeList<
                  ErrorAdditionalInfoResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'code': code,
      'level': level,
      'message': message,
      'target': ?target,
    };
  }

  factory DeploymentStacksDiagnosticResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksDiagnosticResponse(
      additionalInfo: (() {
        final guardedValue = map['additionalInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ErrorAdditionalInfoResponse>(
            guardedValue,
            (value) => ErrorAdditionalInfoResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      code: pulumi.Input.fromValue(map['code'] as String),
      level: pulumi.Input.fromValue(map['level'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
