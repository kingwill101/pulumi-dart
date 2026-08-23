// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_backend_response_data_masking_header.dart';
import 'diagnostic_backend_response_data_masking_query_param.dart';

class DiagnosticBackendResponseDataMasking {
  /// A `headers` block as defined below.
  final pulumi.Input<List<DiagnosticBackendResponseDataMaskingHeader>>? headers;
  /// A `queryParams` block as defined below.
  final pulumi.Input<List<DiagnosticBackendResponseDataMaskingQueryParam>>? queryParams;

  /// Creates a new [DiagnosticBackendResponseDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `queryParams` block as defined below.
  const DiagnosticBackendResponseDataMasking({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<DiagnosticBackendResponseDataMaskingHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<DiagnosticBackendResponseDataMaskingHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryParams': ?pulumi.Input.mapOptionalInputValue<List<DiagnosticBackendResponseDataMaskingQueryParam>, List<Map<String, dynamic>>>(queryParams, (value) => pulumi.Input.encodeList<DiagnosticBackendResponseDataMaskingQueryParam, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiagnosticBackendResponseDataMasking.fromMap(Map<String, dynamic> map) {
    return DiagnosticBackendResponseDataMasking(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiagnosticBackendResponseDataMaskingHeader>(guardedValue, (value) => DiagnosticBackendResponseDataMaskingHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryParams: (() { final guardedValue = map['queryParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiagnosticBackendResponseDataMaskingQueryParam>(guardedValue, (value) => DiagnosticBackendResponseDataMaskingQueryParam.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
