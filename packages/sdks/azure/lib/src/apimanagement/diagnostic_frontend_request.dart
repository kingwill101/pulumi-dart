// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_frontend_request_data_masking.dart';

class DiagnosticFrontendRequest {
  /// Number of payload bytes to log (up to 8192).
  final pulumi.Input<int?>? bodyBytes;
  /// A `dataMasking` block as defined below.
  final pulumi.Input<DiagnosticFrontendRequestDataMasking?>? dataMasking;
  /// Specifies a list of headers to log.
  final pulumi.Input<List<String>?>? headersToLogs;

  /// Creates a new [DiagnosticFrontendRequest].
  /// [bodyBytes] Number of payload bytes to log (up to 8192).
  /// [dataMasking] A `dataMasking` block as defined below.
  /// [headersToLogs] Specifies a list of headers to log.
  const DiagnosticFrontendRequest({
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
      bodyBytes: (() { final guardedValue = map['bodyBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dataMasking: (() { final guardedValue = map['dataMasking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticFrontendRequestDataMasking.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      headersToLogs: (() { final guardedValue = map['headersToLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
