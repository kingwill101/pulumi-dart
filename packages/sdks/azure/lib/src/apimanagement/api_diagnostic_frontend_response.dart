// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_frontend_response_data_masking.dart';

class ApiDiagnosticFrontendResponse {
  /// Number of payload bytes to log (up to 8192).
  final pulumi.Input<int?>? bodyBytes;
  /// A `dataMasking` block as defined below.
  final pulumi.Input<ApiDiagnosticFrontendResponseDataMasking?>? dataMasking;
  /// Specifies a list of headers to log.
  final pulumi.Input<List<String>?>? headersToLogs;

  /// Creates a new [ApiDiagnosticFrontendResponse].
  /// [bodyBytes] Number of payload bytes to log (up to 8192).
  /// [dataMasking] A `dataMasking` block as defined below.
  /// [headersToLogs] Specifies a list of headers to log.
  const ApiDiagnosticFrontendResponse({
    this.bodyBytes,
    this.dataMasking,
    this.headersToLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyBytes': ?bodyBytes,
      'dataMasking': ?pulumi.Input.mapOptionalInputValue<ApiDiagnosticFrontendResponseDataMasking, Map<String, dynamic>>(dataMasking, (value) => value.toMap()),
      'headersToLogs': ?headersToLogs,
    };
  }

  factory ApiDiagnosticFrontendResponse.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticFrontendResponse(
      bodyBytes: (() { final guardedValue = map['bodyBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dataMasking: (() { final guardedValue = map['dataMasking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiDiagnosticFrontendResponseDataMasking.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      headersToLogs: (() { final guardedValue = map['headersToLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
