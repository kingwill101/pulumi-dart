// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an error encountered in the file during validation.
class ValidationErrorResponse {
  /// A list of descriptions of the error.
  final pulumi.Input<List<String>> errorMessages;
  /// The number of the record that has the error.
  final pulumi.Input<int?>? recordIndex;

  /// Creates a new [ValidationErrorResponse].
  /// [errorMessages] A list of descriptions of the error.
  /// [recordIndex] The number of the record that has the error.
  const ValidationErrorResponse({
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
      errorMessages: pulumi.Input.fromValue((map['errorMessages'] as List).cast<String>()),
      recordIndex: (() { final guardedValue = map['recordIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
