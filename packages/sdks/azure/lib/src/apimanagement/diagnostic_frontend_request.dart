// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_frontend_request_data_masking.dart';

class DiagnosticFrontendRequest {
  /// Number of payload bytes to log (up to 8192).
  final pulumi.Input<int>? bodyBytes;
  /// A `data_masking` block as defined below.
  final pulumi.Input<DiagnosticFrontendRequestDataMasking>? dataMasking;
  /// Specifies a list of headers to log.
  final pulumi.Input<List<String>>? headersToLogs;

  /// Creates a new [DiagnosticFrontendRequest].
  /// [bodyBytes] Number of payload bytes to log (up to 8192).
  /// [dataMasking] A `data_masking` block as defined below.
  /// [headersToLogs] Specifies a list of headers to log.
  DiagnosticFrontendRequest({
    this.bodyBytes,
    this.dataMasking,
    this.headersToLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyBytes': ?bodyBytes,
      'dataMasking': ?pulumi.Input.mapOptionalInputValue<DiagnosticFrontendRequestDataMasking, Map<String, dynamic>>(dataMasking, (value) => value.toMap()),
      'headersToLogs': ?headersToLogs,
    };
  }

  factory DiagnosticFrontendRequest.fromMap(Map<String, dynamic> map) {
    return DiagnosticFrontendRequest(
      bodyBytes: map['bodyBytes'] == null ? null : (map['bodyBytes']! as int).input(),
      dataMasking: map['dataMasking'] == null ? null : (DiagnosticFrontendRequestDataMasking.fromMap((map['dataMasking']! as Map).cast<String, dynamic>())).input(),
      headersToLogs: map['headersToLogs'] == null ? null : ((map['headersToLogs']! as List).cast<String>()).input(),
    );
  }
}

