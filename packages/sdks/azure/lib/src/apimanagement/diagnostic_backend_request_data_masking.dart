// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_backend_request_data_masking_header.dart';
import 'diagnostic_backend_request_data_masking_query_param.dart';

class DiagnosticBackendRequestDataMasking {
  /// A `headers` block as defined below.
  final pulumi.Input<List<DiagnosticBackendRequestDataMaskingHeader>>? headers;
  /// A `query_params` block as defined below.
  final pulumi.Input<List<DiagnosticBackendRequestDataMaskingQueryParam>>? queryParams;

  /// Creates a new [DiagnosticBackendRequestDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `query_params` block as defined below.
  DiagnosticBackendRequestDataMasking({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<DiagnosticBackendRequestDataMaskingHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<DiagnosticBackendRequestDataMaskingHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryParams': ?pulumi.Input.mapOptionalInputValue<List<DiagnosticBackendRequestDataMaskingQueryParam>, List<Map<String, dynamic>>>(queryParams, (value) => pulumi.Input.encodeList<DiagnosticBackendRequestDataMaskingQueryParam, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiagnosticBackendRequestDataMasking.fromMap(Map<String, dynamic> map) {
    return DiagnosticBackendRequestDataMasking(
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<DiagnosticBackendRequestDataMaskingHeader>(map['headers']!, (value) => DiagnosticBackendRequestDataMaskingHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      queryParams: map['queryParams'] == null ? null : (pulumi.Input.decodeList<DiagnosticBackendRequestDataMaskingQueryParam>(map['queryParams']!, (value) => DiagnosticBackendRequestDataMaskingQueryParam.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

