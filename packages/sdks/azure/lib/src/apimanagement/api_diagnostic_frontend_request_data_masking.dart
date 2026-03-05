// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_frontend_request_data_masking_header.dart';
import 'api_diagnostic_frontend_request_data_masking_query_param.dart';

class ApiDiagnosticFrontendRequestDataMasking {
  /// A `headers` block as defined below.
  final pulumi.Input<List<ApiDiagnosticFrontendRequestDataMaskingHeader>>? headers;
  /// A `query_params` block as defined below.
  final pulumi.Input<List<ApiDiagnosticFrontendRequestDataMaskingQueryParam>>? queryParams;

  /// Creates a new [ApiDiagnosticFrontendRequestDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `query_params` block as defined below.
  ApiDiagnosticFrontendRequestDataMasking({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ApiDiagnosticFrontendRequestDataMaskingHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ApiDiagnosticFrontendRequestDataMaskingHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryParams': ?pulumi.Input.mapOptionalInputValue<List<ApiDiagnosticFrontendRequestDataMaskingQueryParam>, List<Map<String, dynamic>>>(queryParams, (value) => pulumi.Input.encodeList<ApiDiagnosticFrontendRequestDataMaskingQueryParam, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApiDiagnosticFrontendRequestDataMasking.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticFrontendRequestDataMasking(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiDiagnosticFrontendRequestDataMaskingHeader>(guardedValue, (value) => ApiDiagnosticFrontendRequestDataMaskingHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryParams: (() { final guardedValue = map['queryParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiDiagnosticFrontendRequestDataMaskingQueryParam>(guardedValue, (value) => ApiDiagnosticFrontendRequestDataMaskingQueryParam.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

