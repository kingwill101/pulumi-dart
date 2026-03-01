// ignore_for_file: unused_element, unnecessary_cast

import 'api_diagnostic_frontend_request_data_masking.dart';

class ApiDiagnosticFrontendRequest {
  /// Number of payload bytes to log (up to 8192).
  final int? bodyBytes;
  /// A `data_masking` block as defined below.
  final ApiDiagnosticFrontendRequestDataMasking? dataMasking;
  /// Specifies a list of headers to log.
  final List<String>? headersToLogs;

  /// Creates a new [ApiDiagnosticFrontendRequest].
  /// [bodyBytes] Number of payload bytes to log (up to 8192).
  /// [dataMasking] A `data_masking` block as defined below.
  /// [headersToLogs] Specifies a list of headers to log.
  ApiDiagnosticFrontendRequest({
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

  factory ApiDiagnosticFrontendRequest.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticFrontendRequest(
      bodyBytes: map['bodyBytes'] == null ? null : map['bodyBytes'] as int,
      dataMasking: map['dataMasking'] == null ? null : ApiDiagnosticFrontendRequestDataMasking.fromMap((map['dataMasking'] as Map).cast<String, dynamic>()),
      headersToLogs: map['headersToLogs'] == null ? null : (map['headersToLogs'] as List).cast<String>(),
    );
  }
}

