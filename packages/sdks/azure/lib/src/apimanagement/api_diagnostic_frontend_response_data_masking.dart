// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_frontend_response_data_masking_header.dart';
import 'api_diagnostic_frontend_response_data_masking_query_param.dart';

class ApiDiagnosticFrontendResponseDataMasking {
  /// A `headers` block as defined below.
  final pulumi.Input<List<ApiDiagnosticFrontendResponseDataMaskingHeader>>?
  headers;

  /// A `query_params` block as defined below.
  final pulumi.Input<List<ApiDiagnosticFrontendResponseDataMaskingQueryParam>>?
  queryParams;

  /// Creates a new [ApiDiagnosticFrontendResponseDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `query_params` block as defined below.
  ApiDiagnosticFrontendResponseDataMasking({this.headers, this.queryParams});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApiDiagnosticFrontendResponseDataMaskingHeader>,
            List<Map<String, dynamic>>
          >(
            headers,
            (value) =>
                pulumi.Input.encodeList<
                  ApiDiagnosticFrontendResponseDataMaskingHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'queryParams':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApiDiagnosticFrontendResponseDataMaskingQueryParam>,
            List<Map<String, dynamic>>
          >(
            queryParams,
            (value) =>
                pulumi.Input.encodeList<
                  ApiDiagnosticFrontendResponseDataMaskingQueryParam,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ApiDiagnosticFrontendResponseDataMasking.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiDiagnosticFrontendResponseDataMasking(
      headers: (() {
        final guardedValue = map['headers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<ApiDiagnosticFrontendResponseDataMaskingHeader>(
            guardedValue,
            (value) => ApiDiagnosticFrontendResponseDataMaskingHeader.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      queryParams: (() {
        final guardedValue = map['queryParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ApiDiagnosticFrontendResponseDataMaskingQueryParam
          >(
            guardedValue,
            (value) =>
                ApiDiagnosticFrontendResponseDataMaskingQueryParam.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
