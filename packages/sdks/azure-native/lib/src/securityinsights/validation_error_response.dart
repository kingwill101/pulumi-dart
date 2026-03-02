// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an error encountered in the file during validation.
class ValidationErrorResponse {
  /// A list of descriptions of the error.
  final pulumi.Input<List<String>> errorMessages;
  /// The number of the record that has the error.
  final pulumi.Input<int>? recordIndex;

  /// Creates a new [ValidationErrorResponse].
  /// [errorMessages] A list of descriptions of the error.
  /// [recordIndex] The number of the record that has the error.
  ValidationErrorResponse({
    required this.errorMessages,
    this.recordIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessages': errorMessages,
      'recordIndex': ?recordIndex,
    };
  }

  factory ValidationErrorResponse.fromMap(Map<String, dynamic> map) {
    return ValidationErrorResponse(
      errorMessages: ((map['errorMessages'] as List).cast<String>()).input(),
      recordIndex: map['recordIndex'] == null ? null : (map['recordIndex'] as int).input(),
    );
  }
}

