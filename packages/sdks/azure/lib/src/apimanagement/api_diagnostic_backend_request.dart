// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_backend_request_data_masking.dart';

class ApiDiagnosticBackendRequest {
  /// Number of payload bytes to log (up to 8192).
  final pulumi.Input<int>? bodyBytes;
  /// A `data_masking` block as defined below.
  final pulumi.Input<ApiDiagnosticBackendRequestDataMasking>? dataMasking;
  /// Specifies a list of headers to log.
  final pulumi.Input<List<String>>? headersToLogs;

  /// Creates a new [ApiDiagnosticBackendRequest].
  /// [bodyBytes] Number of payload bytes to log (up to 8192).
  /// [dataMasking] A `data_masking` block as defined below.
  /// [headersToLogs] Specifies a list of headers to log.
  ApiDiagnosticBackendRequest({
    this.bodyBytes,
    this.dataMasking,
    this.headersToLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyBytes': ?bodyBytes,
      'dataMasking': ?pulumi.Input.mapOptionalInputValue<ApiDiagnosticBackendRequestDataMasking, Map<String, dynamic>>(dataMasking, (value) => value.toMap()),
      'headersToLogs': ?headersToLogs,
    };
  }

  factory ApiDiagnosticBackendRequest.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticBackendRequest(
      bodyBytes: map['bodyBytes'] == null ? null : (map['bodyBytes'] as int).input(),
      dataMasking: map['dataMasking'] == null ? null : (ApiDiagnosticBackendRequestDataMasking.fromMap((map['dataMasking'] as Map).cast<String, dynamic>())).input(),
      headersToLogs: map['headersToLogs'] == null ? null : ((map['headersToLogs'] as List).cast<String>()).input(),
    );
  }
}

