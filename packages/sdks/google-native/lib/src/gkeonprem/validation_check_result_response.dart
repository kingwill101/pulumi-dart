// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ValidationCheckResult defines the details about the validation check.
class ValidationCheckResultResponse {
  /// The category of the validation.
  final pulumi.Input<String> category;
  /// The description of the validation check.
  final pulumi.Input<String> description;
  /// Detailed failure information, which might be unformatted.
  final pulumi.Input<String> details;
  /// A human-readable message of the check failure.
  final pulumi.Input<String> reason;
  /// The validation check state.
  final pulumi.Input<String> state;

  /// Creates a new [ValidationCheckResultResponse].
  /// [category] The category of the validation.
  /// [description] The description of the validation check.
  /// [details] Detailed failure information, which might be unformatted.
  /// [reason] A human-readable message of the check failure.
  /// [state] The validation check state.
  const ValidationCheckResultResponse({
    required this.category,
    required this.description,
    required this.details,
    required this.reason,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'description': description,
      'details': details,
      'reason': reason,
      'state': state,
    };
  }

  factory ValidationCheckResultResponse.fromMap(Map<String, dynamic> map) {
    return ValidationCheckResultResponse(
      category: pulumi.Input.fromValue(map['category'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      details: pulumi.Input.fromValue(map['details'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
