// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiagnosticBackendResponseDataMaskingHeader {
  /// The data masking mode. Possible values are `Mask` and `Hide` for `query_params`. The only possible value is `Mask` for `headers`.
  final pulumi.Input<String> mode;
  /// The name of the header or the query parameter to mask.
  final pulumi.Input<String> value;

  /// Creates a new [DiagnosticBackendResponseDataMaskingHeader].
  /// [mode] The data masking mode. Possible values are `Mask` and `Hide` for `query_params`. The only possible value is `Mask` for `headers`.
  /// [value] The name of the header or the query parameter to mask.
  DiagnosticBackendResponseDataMaskingHeader({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory DiagnosticBackendResponseDataMaskingHeader.fromMap(Map<String, dynamic> map) {
    return DiagnosticBackendResponseDataMaskingHeader(
      mode: (map['mode'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

