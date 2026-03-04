// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Body of the error response returned from the API.
class ErrorEntityResponse {
  /// Basic error code.
  final pulumi.Input<String>? code;

  /// Error Details.
  final pulumi.Input<List<ErrorEntityResponse>>? details;

  /// Type of error.
  final pulumi.Input<String>? extendedCode;

  /// Inner errors.
  final pulumi.Input<List<ErrorEntityResponse>>? innerErrors;

  /// Any details of the error.
  final pulumi.Input<String>? message;

  /// Message template.
  final pulumi.Input<String>? messageTemplate;

  /// Parameters for the template.
  final pulumi.Input<List<String>>? parameters;

  /// The error target.
  final pulumi.Input<String>? target;

  /// Creates a new [ErrorEntityResponse].
  /// [code] Basic error code.
  /// [details] Error Details.
  /// [extendedCode] Type of error.
  /// [innerErrors] Inner errors.
  /// [message] Any details of the error.
  /// [messageTemplate] Message template.
  /// [parameters] Parameters for the template.
  /// [target] The error target.
  ErrorEntityResponse({
    this.code,
    this.details,
    this.extendedCode,
    this.innerErrors,
    this.message,
    this.messageTemplate,
    this.parameters,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details':
          ?pulumi.Input.mapOptionalInputValue<
            List<ErrorEntityResponse>,
            List<Map<String, dynamic>>
          >(
            details,
            (value) =>
                pulumi.Input.encodeList<
                  ErrorEntityResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'extendedCode': ?extendedCode,
      'innerErrors':
          ?pulumi.Input.mapOptionalInputValue<
            List<ErrorEntityResponse>,
            List<Map<String, dynamic>>
          >(
            innerErrors,
            (value) =>
                pulumi.Input.encodeList<
                  ErrorEntityResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'message': ?message,
      'messageTemplate': ?messageTemplate,
      'parameters': ?parameters,
      'target': ?target,
    };
  }

  factory ErrorEntityResponse.fromMap(Map<String, dynamic> map) {
    return ErrorEntityResponse(
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      details: (() {
        final guardedValue = map['details'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ErrorEntityResponse>(
            guardedValue,
            (value) => ErrorEntityResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      extendedCode: (() {
        final guardedValue = map['extendedCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      innerErrors: (() {
        final guardedValue = map['innerErrors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ErrorEntityResponse>(
            guardedValue,
            (value) => ErrorEntityResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messageTemplate: (() {
        final guardedValue = map['messageTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
