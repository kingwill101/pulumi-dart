// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_frontend_response_data_masking_header.dart';
import 'diagnostic_frontend_response_data_masking_query_param.dart';

class DiagnosticFrontendResponseDataMasking {
  /// A `headers` block as defined below.
  final List<DiagnosticFrontendResponseDataMaskingHeader>? headers;
  /// A `query_params` block as defined below.
  final List<DiagnosticFrontendResponseDataMaskingQueryParam>? queryParams;

  /// Creates a new [DiagnosticFrontendResponseDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `query_params` block as defined below.
  DiagnosticFrontendResponseDataMasking({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null ? null : pulumi.Input.encodeList<DiagnosticFrontendResponseDataMaskingHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'queryParams': ?queryParams == null ? null : pulumi.Input.encodeList<DiagnosticFrontendResponseDataMaskingQueryParam, Map<String, dynamic>>(queryParams!, (value) => value.toMap()),
    };
  }

  factory DiagnosticFrontendResponseDataMasking.fromMap(Map<String, dynamic> map) {
    return DiagnosticFrontendResponseDataMasking(
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<DiagnosticFrontendResponseDataMaskingHeader>(map['headers'], (value) => DiagnosticFrontendResponseDataMaskingHeader.fromMap((value as Map).cast<String, dynamic>())),
      queryParams: map['queryParams'] == null ? null : pulumi.Input.decodeList<DiagnosticFrontendResponseDataMaskingQueryParam>(map['queryParams'], (value) => DiagnosticFrontendResponseDataMaskingQueryParam.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

