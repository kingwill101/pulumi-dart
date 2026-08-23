// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiagnosticFrontendResponseDataMaskingQueryParam {
  /// The data masking mode. Possible values are `Mask` and `Hide` for `queryParams`. The only possible value is `Mask` for `headers`.
  final pulumi.Input<String> mode;
  /// The name of the header or the query parameter to mask.
  final pulumi.Input<String> value;

  /// Creates a new [DiagnosticFrontendResponseDataMaskingQueryParam].
  /// [mode] The data masking mode. Possible values are `Mask` and `Hide` for `queryParams`. The only possible value is `Mask` for `headers`.
  /// [value] The name of the header or the query parameter to mask.
  const DiagnosticFrontendResponseDataMaskingQueryParam({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory DiagnosticFrontendResponseDataMaskingQueryParam.fromMap(Map<String, dynamic> map) {
    return DiagnosticFrontendResponseDataMaskingQueryParam(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
