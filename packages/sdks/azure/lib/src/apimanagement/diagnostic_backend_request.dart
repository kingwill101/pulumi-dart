// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_backend_request_data_masking.dart';

class DiagnosticBackendRequest {
  /// Number of payload bytes to log (up to 8192).
  final pulumi.Input<int>? bodyBytes;

  /// A `data_masking` block as defined below.
  final pulumi.Input<DiagnosticBackendRequestDataMasking>? dataMasking;

  /// Specifies a list of headers to log.
  final pulumi.Input<List<String>>? headersToLogs;

  /// Creates a new [DiagnosticBackendRequest].
  /// [bodyBytes] Number of payload bytes to log (up to 8192).
  /// [dataMasking] A `data_masking` block as defined below.
  /// [headersToLogs] Specifies a list of headers to log.
  DiagnosticBackendRequest({
    this.bodyBytes,
    this.dataMasking,
    this.headersToLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyBytes': ?bodyBytes,
      'dataMasking':
          ?pulumi.Input.mapOptionalInputValue<
            DiagnosticBackendRequestDataMasking,
            Map<String, dynamic>
          >(dataMasking, (value) => value.toMap()),
      'headersToLogs': ?headersToLogs,
    };
  }

  factory DiagnosticBackendRequest.fromMap(Map<String, dynamic> map) {
    return DiagnosticBackendRequest(
      bodyBytes: (() {
        final guardedValue = map['bodyBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dataMasking: (() {
        final guardedValue = map['dataMasking'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiagnosticBackendRequestDataMasking.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      headersToLogs: (() {
        final guardedValue = map['headersToLogs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
