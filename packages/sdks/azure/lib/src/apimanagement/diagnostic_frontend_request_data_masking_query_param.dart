// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiagnosticFrontendRequestDataMaskingQueryParam {
  /// The data masking mode. Possible values are `Mask` and `Hide` for `query_params`. The only possible value is `Mask` for `headers`.
  final pulumi.Input<String> mode;
  /// The name of the header or the query parameter to mask.
  final pulumi.Input<String> value;

  /// Creates a new [DiagnosticFrontendRequestDataMaskingQueryParam].
  /// [mode] The data masking mode. Possible values are `Mask` and `Hide` for `query_params`. The only possible value is `Mask` for `headers`.
  /// [value] The name of the header or the query parameter to mask.
  DiagnosticFrontendRequestDataMaskingQueryParam({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory DiagnosticFrontendRequestDataMaskingQueryParam.fromMap(Map<String, dynamic> map) {
    return DiagnosticFrontendRequestDataMaskingQueryParam(
      mode: (map['mode'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

