// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scan_config_error.dart';
import 'scan_run_error_trace_code.dart';

/// Output only. Defines an error trace message for a ScanRun.
class ScanRunErrorTrace {
  /// Indicates the error reason code.
  final pulumi.Input<ScanRunErrorTraceCode>? code;
  /// If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most common HTTP error code, if such is available. For example, if this code is 404, the scan has encountered too many NOT_FOUND responses.
  final pulumi.Input<int>? mostCommonHttpErrorCode;
  /// If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error message encountered during scan configuration validation that is performed before each scan run.
  final pulumi.Input<ScanConfigError>? scanConfigError;

  /// Creates a new [ScanRunErrorTrace].
  /// [code] Indicates the error reason code.
  /// [mostCommonHttpErrorCode] If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most common HTTP error code, if such is available. For example, if this code is 404, the scan has encountered too many NOT_FOUND responses.
  /// [scanConfigError] If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error message encountered during scan configuration validation that is performed before each scan run.
  ScanRunErrorTrace({
    this.code,
    this.mostCommonHttpErrorCode,
    this.scanConfigError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?pulumi.Input.mapOptionalInputValue<ScanRunErrorTraceCode, String>(code, (value) => value.wireValue),
      'mostCommonHttpErrorCode': ?mostCommonHttpErrorCode,
      'scanConfigError': ?pulumi.Input.mapOptionalInputValue<ScanConfigError, Map<String, dynamic>>(scanConfigError, (value) => value.toMap()),
    };
  }

  factory ScanRunErrorTrace.fromMap(Map<String, dynamic> map) {
    return ScanRunErrorTrace(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScanRunErrorTraceCode.fromValue(guardedValue as String)); })(),
      mostCommonHttpErrorCode: (() { final guardedValue = map['mostCommonHttpErrorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scanConfigError: (() { final guardedValue = map['scanConfigError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScanConfigError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

