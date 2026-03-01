// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_frontend_request_data_masking_header.dart';
import 'api_diagnostic_frontend_request_data_masking_query_param.dart';

class ApiDiagnosticFrontendRequestDataMasking {
  /// A `headers` block as defined below.
  final List<ApiDiagnosticFrontendRequestDataMaskingHeader>? headers;
  /// A `query_params` block as defined below.
  final List<ApiDiagnosticFrontendRequestDataMaskingQueryParam>? queryParams;

  /// Creates a new [ApiDiagnosticFrontendRequestDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `query_params` block as defined below.
  ApiDiagnosticFrontendRequestDataMasking({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null ? null : pulumi.Input.encodeList<ApiDiagnosticFrontendRequestDataMaskingHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'queryParams': ?queryParams == null ? null : pulumi.Input.encodeList<ApiDiagnosticFrontendRequestDataMaskingQueryParam, Map<String, dynamic>>(queryParams!, (value) => value.toMap()),
    };
  }

  factory ApiDiagnosticFrontendRequestDataMasking.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticFrontendRequestDataMasking(
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<ApiDiagnosticFrontendRequestDataMaskingHeader>(map['headers'], (value) => ApiDiagnosticFrontendRequestDataMaskingHeader.fromMap((value as Map).cast<String, dynamic>())),
      queryParams: map['queryParams'] == null ? null : pulumi.Input.decodeList<ApiDiagnosticFrontendRequestDataMaskingQueryParam>(map['queryParams'], (value) => ApiDiagnosticFrontendRequestDataMaskingQueryParam.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

