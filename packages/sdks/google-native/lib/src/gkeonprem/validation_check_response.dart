// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_check_status_response.dart';

/// ValidationCheck represents the result of preflight check.
class ValidationCheckResponse {
  /// Options used for the validation check
  final pulumi.Input<String> option;
  /// The scenario when the preflight checks were run.
  final pulumi.Input<String> scenario;
  /// The detailed validation check status.
  final pulumi.Input<ValidationCheckStatusResponse> status;

  /// Creates a new [ValidationCheckResponse].
  /// [option] Options used for the validation check
  /// [scenario] The scenario when the preflight checks were run.
  /// [status] The detailed validation check status.
  const ValidationCheckResponse({
    required this.option,
    required this.scenario,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'option': option,
      'scenario': scenario,
      'status': pulumi.Input.mapInputValue<ValidationCheckStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory ValidationCheckResponse.fromMap(Map<String, dynamic> map) {
    return ValidationCheckResponse(
      option: pulumi.Input.fromValue(map['option'] as String),
      scenario: pulumi.Input.fromValue(map['scenario'] as String),
      status: pulumi.Input.fromValue(ValidationCheckStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}
