// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The represent of basic error
class BasicErrorDryrunPrerequisiteResultResponse {
  /// The error code.
  final pulumi.Input<String>? code;

  /// The error message.
  final pulumi.Input<String>? message;

  /// The type of dryrun result.
  /// Expected value is 'basicError'.
  final pulumi.Input<String> type;

  /// Creates a new [BasicErrorDryrunPrerequisiteResultResponse].
  /// [code] The error code.
  /// [message] The error message.
  /// [type] The type of dryrun result.
  BasicErrorDryrunPrerequisiteResultResponse({
    this.code,
    this.message,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': ?code, 'message': ?message, 'type': type};
  }

  factory BasicErrorDryrunPrerequisiteResultResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BasicErrorDryrunPrerequisiteResultResponse(
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
