// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes string and array limits when writing to logs. When a limit is exceeded the *shortener_type* describes how to shorten the field. next_id: 6
class EnterpriseCrmLoggingGwsFieldLimitsResponse {
  final pulumi.Input<String> logAction;
  /// To which type(s) of logs the limits apply.
  final pulumi.Input<List<String>> logType;
  /// maximum array size. If the array exceds this size, the field (list) is truncated.
  final pulumi.Input<int> maxArraySize;
  /// maximum string length. If the field exceeds this amount the field is shortened.
  final pulumi.Input<int> maxStringLength;
  final pulumi.Input<String> shortenerType;

  /// Creates a new [EnterpriseCrmLoggingGwsFieldLimitsResponse].
  /// [logAction] Required.
  /// [logType] To which type(s) of logs the limits apply.
  /// [maxArraySize] maximum array size. If the array exceds this size, the field (list) is truncated.
  /// [maxStringLength] maximum string length. If the field exceeds this amount the field is shortened.
  /// [shortenerType] Required.
  const EnterpriseCrmLoggingGwsFieldLimitsResponse({
    required this.logAction,
    required this.logType,
    required this.maxArraySize,
    required this.maxStringLength,
    required this.shortenerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAction': logAction,
      'logType': logType,
      'maxArraySize': maxArraySize,
      'maxStringLength': maxStringLength,
      'shortenerType': shortenerType,
    };
  }

  factory EnterpriseCrmLoggingGwsFieldLimitsResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmLoggingGwsFieldLimitsResponse(
      logAction: pulumi.Input.fromValue(map['logAction'] as String),
      logType: pulumi.Input.fromValue((map['logType'] as List).cast<String>()),
      maxArraySize: pulumi.Input.fromValue(map['maxArraySize'] as int),
      maxStringLength: pulumi.Input.fromValue(map['maxStringLength'] as int),
      shortenerType: pulumi.Input.fromValue(map['shortenerType'] as String),
    );
  }
}
