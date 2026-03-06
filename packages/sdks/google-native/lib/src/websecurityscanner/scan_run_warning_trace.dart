// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scan_run_warning_trace_code.dart';

/// Output only. Defines a warning trace message for ScanRun. Warning traces provide customers with useful information that helps make the scanning process more effective.
class ScanRunWarningTrace {
  /// Indicates the warning code.
  final pulumi.Input<ScanRunWarningTraceCode>? code;

  /// Creates a new [ScanRunWarningTrace].
  /// [code] Indicates the warning code.
  const ScanRunWarningTrace({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?pulumi.Input.mapOptionalInputValue<ScanRunWarningTraceCode, String>(code, (value) => value.wireValue),
    };
  }

  factory ScanRunWarningTrace.fromMap(Map<String, dynamic> map) {
    return ScanRunWarningTrace(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScanRunWarningTraceCode.fromValue(guardedValue as String)); })(),
    );
  }
}

