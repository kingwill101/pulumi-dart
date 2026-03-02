// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scan_config_error_response.dart';

/// Output only. Defines an error trace message for a ScanRun.
class ScanRunErrorTraceResponse {
  /// Indicates the error reason code.
  final pulumi.Input<String> code;
  /// If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most common HTTP error code, if such is available. For example, if this code is 404, the scan has encountered too many NOT_FOUND responses.
  final pulumi.Input<int> mostCommonHttpErrorCode;
  /// If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error message encountered during scan configuration validation that is performed before each scan run.
  final pulumi.Input<ScanConfigErrorResponse> scanConfigError;

  /// Creates a new [ScanRunErrorTraceResponse].
  /// [code] Indicates the error reason code.
  /// [mostCommonHttpErrorCode] If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most common HTTP error code, if such is available. For example, if this code is 404, the scan has encountered too many NOT_FOUND responses.
  /// [scanConfigError] If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error message encountered during scan configuration validation that is performed before each scan run.
  ScanRunErrorTraceResponse({
    required this.code,
    required this.mostCommonHttpErrorCode,
    required this.scanConfigError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'mostCommonHttpErrorCode': mostCommonHttpErrorCode,
      'scanConfigError': pulumi.Input.mapInputValue<ScanConfigErrorResponse, Map<String, dynamic>>(scanConfigError, (value) => value.toMap()),
    };
  }

  factory ScanRunErrorTraceResponse.fromMap(Map<String, dynamic> map) {
    return ScanRunErrorTraceResponse(
      code: (map['code'] as String).input(),
      mostCommonHttpErrorCode: (map['mostCommonHttpErrorCode'] as int).input(),
      scanConfigError: (ScanConfigErrorResponse.fromMap((map['scanConfigError'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

