// ignore_for_file: unused_element, unnecessary_cast

import 'api_diagnostic_frontend_response_data_masking.dart';

class ApiDiagnosticFrontendResponse {
  /// Number of payload bytes to log (up to 8192).
  final int? bodyBytes;
  /// A `data_masking` block as defined below.
  final ApiDiagnosticFrontendResponseDataMasking? dataMasking;
  /// Specifies a list of headers to log.
  final List<String>? headersToLogs;

  /// Creates a new [ApiDiagnosticFrontendResponse].
  /// [bodyBytes] Number of payload bytes to log (up to 8192).
  /// [dataMasking] A `data_masking` block as defined below.
  /// [headersToLogs] Specifies a list of headers to log.
  ApiDiagnosticFrontendResponse({
    this.bodyBytes,
    this.dataMasking,
    this.headersToLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyBytes': ?bodyBytes,
      'dataMasking': ?dataMasking == null ? null : dataMasking!.toMap(),
      'headersToLogs': ?headersToLogs,
    };
  }

  factory ApiDiagnosticFrontendResponse.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticFrontendResponse(
      bodyBytes: map['bodyBytes'] == null ? null : map['bodyBytes'] as int,
      dataMasking: map['dataMasking'] == null ? null : ApiDiagnosticFrontendResponseDataMasking.fromMap((map['dataMasking'] as Map).cast<String, dynamic>()),
      headersToLogs: map['headersToLogs'] == null ? null : (map['headersToLogs'] as List).cast<String>(),
    );
  }
}

