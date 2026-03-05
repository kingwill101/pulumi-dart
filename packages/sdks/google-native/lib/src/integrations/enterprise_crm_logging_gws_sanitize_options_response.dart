// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies whether a field contains, or may contain, PII or sensitive data, and how to sanitize the field if it does. If a field's privacy type cannot be determined then it is sanitized (e.g., scrubbed). The specific sanitizer implementation is determined by run-time configuration and environment options (e.g., prod vs. qa). next_id: 5
class EnterpriseCrmLoggingGwsSanitizeOptionsResponse {
  /// If true, the value has already been sanitized and needs no further sanitization. For instance, a D3 customer id is already an obfuscated entity and *might not* need further sanitization.
  final pulumi.Input<bool> isAlreadySanitized;
  /// To which type(s) of logs the sanitize options apply.
  final pulumi.Input<List<String>> logType;
  final pulumi.Input<String> privacy;
  final pulumi.Input<String> sanitizeType;

  /// Creates a new [EnterpriseCrmLoggingGwsSanitizeOptionsResponse].
  /// [isAlreadySanitized] If true, the value has already been sanitized and needs no further sanitization. For instance, a D3 customer id is already an obfuscated entity and *might not* need further sanitization.
  /// [logType] To which type(s) of logs the sanitize options apply.
  /// [privacy] Required.
  /// [sanitizeType] Required.
  EnterpriseCrmLoggingGwsSanitizeOptionsResponse({
    required this.isAlreadySanitized,
    required this.logType,
    required this.privacy,
    required this.sanitizeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isAlreadySanitized': isAlreadySanitized,
      'logType': logType,
      'privacy': privacy,
      'sanitizeType': sanitizeType,
    };
  }

  factory EnterpriseCrmLoggingGwsSanitizeOptionsResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmLoggingGwsSanitizeOptionsResponse(
      isAlreadySanitized: pulumi.Input.fromValue(map['isAlreadySanitized'] as bool),
      logType: pulumi.Input.fromValue((map['logType'] as List).cast<String>()),
      privacy: pulumi.Input.fromValue(map['privacy'] as String),
      sanitizeType: pulumi.Input.fromValue(map['sanitizeType'] as String),
    );
  }
}

