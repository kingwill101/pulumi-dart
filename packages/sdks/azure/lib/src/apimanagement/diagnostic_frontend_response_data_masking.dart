// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_frontend_response_data_masking_header.dart';
import 'diagnostic_frontend_response_data_masking_query_param.dart';

class DiagnosticFrontendResponseDataMasking {
  /// A `headers` block as defined below.
  final pulumi.Input<List<DiagnosticFrontendResponseDataMaskingHeader>>?
  headers;

  /// A `query_params` block as defined below.
  final pulumi.Input<List<DiagnosticFrontendResponseDataMaskingQueryParam>>?
  queryParams;

  /// Creates a new [DiagnosticFrontendResponseDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `query_params` block as defined below.
  DiagnosticFrontendResponseDataMasking({this.headers, this.queryParams});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers':
          ?pulumi.Input.mapOptionalInputValue<
            List<DiagnosticFrontendResponseDataMaskingHeader>,
            List<Map<String, dynamic>>
          >(
            headers,
            (value) =>
                pulumi.Input.encodeList<
                  DiagnosticFrontendResponseDataMaskingHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'queryParams':
          ?pulumi.Input.mapOptionalInputValue<
            List<DiagnosticFrontendResponseDataMaskingQueryParam>,
            List<Map<String, dynamic>>
          >(
            queryParams,
            (value) =>
                pulumi.Input.encodeList<
                  DiagnosticFrontendResponseDataMaskingQueryParam,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DiagnosticFrontendResponseDataMasking.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiagnosticFrontendResponseDataMasking(
      headers: (() {
        final guardedValue = map['headers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DiagnosticFrontendResponseDataMaskingHeader>(
            guardedValue,
            (value) => DiagnosticFrontendResponseDataMaskingHeader.fromMap(
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
            DiagnosticFrontendResponseDataMaskingQueryParam
          >(
            guardedValue,
            (value) => DiagnosticFrontendResponseDataMaskingQueryParam.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
