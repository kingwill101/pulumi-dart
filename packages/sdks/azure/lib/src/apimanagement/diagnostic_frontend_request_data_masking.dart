// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_frontend_request_data_masking_header.dart';
import 'diagnostic_frontend_request_data_masking_query_param.dart';

class DiagnosticFrontendRequestDataMasking {
  /// A `headers` block as defined below.
  final pulumi.Input<List<DiagnosticFrontendRequestDataMaskingHeader>>? headers;

  /// A `query_params` block as defined below.
  final pulumi.Input<List<DiagnosticFrontendRequestDataMaskingQueryParam>>?
  queryParams;

  /// Creates a new [DiagnosticFrontendRequestDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `query_params` block as defined below.
  DiagnosticFrontendRequestDataMasking({this.headers, this.queryParams});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers':
          ?pulumi.Input.mapOptionalInputValue<
            List<DiagnosticFrontendRequestDataMaskingHeader>,
            List<Map<String, dynamic>>
          >(
            headers,
            (value) =>
                pulumi.Input.encodeList<
                  DiagnosticFrontendRequestDataMaskingHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'queryParams':
          ?pulumi.Input.mapOptionalInputValue<
            List<DiagnosticFrontendRequestDataMaskingQueryParam>,
            List<Map<String, dynamic>>
          >(
            queryParams,
            (value) =>
                pulumi.Input.encodeList<
                  DiagnosticFrontendRequestDataMaskingQueryParam,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DiagnosticFrontendRequestDataMasking.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiagnosticFrontendRequestDataMasking(
      headers: (() {
        final guardedValue = map['headers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DiagnosticFrontendRequestDataMaskingHeader>(
            guardedValue,
            (value) => DiagnosticFrontendRequestDataMaskingHeader.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      queryParams: (() {
        final guardedValue = map['queryParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<DiagnosticFrontendRequestDataMaskingQueryParam>(
            guardedValue,
            (value) => DiagnosticFrontendRequestDataMaskingQueryParam.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
