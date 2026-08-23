// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_backend_request_data_masking_header.dart';
import 'api_diagnostic_backend_request_data_masking_query_param.dart';

class ApiDiagnosticBackendRequestDataMasking {
  /// A `headers` block as defined below.
  final pulumi.Input<List<ApiDiagnosticBackendRequestDataMaskingHeader>>? headers;
  /// A `queryParams` block as defined below.
  final pulumi.Input<List<ApiDiagnosticBackendRequestDataMaskingQueryParam>>? queryParams;

  /// Creates a new [ApiDiagnosticBackendRequestDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `queryParams` block as defined below.
  const ApiDiagnosticBackendRequestDataMasking({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ApiDiagnosticBackendRequestDataMaskingHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ApiDiagnosticBackendRequestDataMaskingHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryParams': ?pulumi.Input.mapOptionalInputValue<List<ApiDiagnosticBackendRequestDataMaskingQueryParam>, List<Map<String, dynamic>>>(queryParams, (value) => pulumi.Input.encodeList<ApiDiagnosticBackendRequestDataMaskingQueryParam, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApiDiagnosticBackendRequestDataMasking.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticBackendRequestDataMasking(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiDiagnosticBackendRequestDataMaskingHeader>(guardedValue, (value) => ApiDiagnosticBackendRequestDataMaskingHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryParams: (() { final guardedValue = map['queryParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiDiagnosticBackendRequestDataMaskingQueryParam>(guardedValue, (value) => ApiDiagnosticBackendRequestDataMaskingQueryParam.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
