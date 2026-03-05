// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Output only. Defines a warning trace message for ScanRun. Warning traces provide customers with useful information that helps make the scanning process more effective.
class ScanRunWarningTraceResponse {
  /// Indicates the warning code.
  final pulumi.Input<String> code;

  /// Creates a new [ScanRunWarningTraceResponse].
  /// [code] Indicates the warning code.
  ScanRunWarningTraceResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory ScanRunWarningTraceResponse.fromMap(Map<String, dynamic> map) {
    return ScanRunWarningTraceResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
    );
  }
}

