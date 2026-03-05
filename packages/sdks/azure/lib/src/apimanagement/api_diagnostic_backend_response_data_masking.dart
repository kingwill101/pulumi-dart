// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_backend_response_data_masking_header.dart';
import 'api_diagnostic_backend_response_data_masking_query_param.dart';

class ApiDiagnosticBackendResponseDataMasking {
  /// A `headers` block as defined below.
  final pulumi.Input<List<ApiDiagnosticBackendResponseDataMaskingHeader>>? headers;
  /// A `query_params` block as defined below.
  final pulumi.Input<List<ApiDiagnosticBackendResponseDataMaskingQueryParam>>? queryParams;

  /// Creates a new [ApiDiagnosticBackendResponseDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `query_params` block as defined below.
  ApiDiagnosticBackendResponseDataMasking({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ApiDiagnosticBackendResponseDataMaskingHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ApiDiagnosticBackendResponseDataMaskingHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryParams': ?pulumi.Input.mapOptionalInputValue<List<ApiDiagnosticBackendResponseDataMaskingQueryParam>, List<Map<String, dynamic>>>(queryParams, (value) => pulumi.Input.encodeList<ApiDiagnosticBackendResponseDataMaskingQueryParam, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApiDiagnosticBackendResponseDataMasking.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticBackendResponseDataMasking(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiDiagnosticBackendResponseDataMaskingHeader>(guardedValue, (value) => ApiDiagnosticBackendResponseDataMaskingHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryParams: (() { final guardedValue = map['queryParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiDiagnosticBackendResponseDataMaskingQueryParam>(guardedValue, (value) => ApiDiagnosticBackendResponseDataMaskingQueryParam.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

