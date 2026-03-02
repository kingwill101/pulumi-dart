// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
class StatusCausePatch {
  /// The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.
  ///
  /// Examples:
  /// "name" - the field "name" on the current resource
  /// "items[0].name" - the field "name" on the first array entry in "items"
  final pulumi.Input<String>? field;
  /// A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
  final pulumi.Input<String>? message;
  /// A machine-readable description of the cause of the error. If this value is empty there is no information available.
  final pulumi.Input<String>? reason;

  /// Creates a new [StatusCausePatch].
  /// [field] The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.
  /// [message] A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
  /// [reason] A machine-readable description of the cause of the error. If this value is empty there is no information available.
  StatusCausePatch({
    this.field,
    this.message,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'message': ?message,
      'reason': ?reason,
    };
  }

  factory StatusCausePatch.fromMap(Map<String, dynamic> map) {
    return StatusCausePatch(
      field: map['field'] == null ? null : (map['field'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
    );
  }
}

