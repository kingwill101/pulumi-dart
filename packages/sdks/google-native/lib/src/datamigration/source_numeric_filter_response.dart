// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter for fixed point number data types such as NUMERIC/NUMBER
class SourceNumericFilterResponse {
  /// Enum to set the option defining the datatypes numeric filter has to be applied to
  final pulumi.Input<String> numericFilterOption;
  /// Optional. The filter will match columns with precision smaller than or equal to this number.
  final pulumi.Input<int> sourceMaxPrecisionFilter;
  /// Optional. The filter will match columns with scale smaller than or equal to this number.
  final pulumi.Input<int> sourceMaxScaleFilter;
  /// Optional. The filter will match columns with precision greater than or equal to this number.
  final pulumi.Input<int> sourceMinPrecisionFilter;
  /// Optional. The filter will match columns with scale greater than or equal to this number.
  final pulumi.Input<int> sourceMinScaleFilter;

  /// Creates a new [SourceNumericFilterResponse].
  /// [numericFilterOption] Enum to set the option defining the datatypes numeric filter has to be applied to
  /// [sourceMaxPrecisionFilter] Optional. The filter will match columns with precision smaller than or equal to this number.
  /// [sourceMaxScaleFilter] Optional. The filter will match columns with scale smaller than or equal to this number.
  /// [sourceMinPrecisionFilter] Optional. The filter will match columns with precision greater than or equal to this number.
  /// [sourceMinScaleFilter] Optional. The filter will match columns with scale greater than or equal to this number.
  SourceNumericFilterResponse({
    required this.numericFilterOption,
    required this.sourceMaxPrecisionFilter,
    required this.sourceMaxScaleFilter,
    required this.sourceMinPrecisionFilter,
    required this.sourceMinScaleFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numericFilterOption': numericFilterOption,
      'sourceMaxPrecisionFilter': sourceMaxPrecisionFilter,
      'sourceMaxScaleFilter': sourceMaxScaleFilter,
      'sourceMinPrecisionFilter': sourceMinPrecisionFilter,
      'sourceMinScaleFilter': sourceMinScaleFilter,
    };
  }

  factory SourceNumericFilterResponse.fromMap(Map<String, dynamic> map) {
    return SourceNumericFilterResponse(
      numericFilterOption: pulumi.Input.fromValue(map['numericFilterOption'] as String),
      sourceMaxPrecisionFilter: pulumi.Input.fromValue(map['sourceMaxPrecisionFilter'] as int),
      sourceMaxScaleFilter: pulumi.Input.fromValue(map['sourceMaxScaleFilter'] as int),
      sourceMinPrecisionFilter: pulumi.Input.fromValue(map['sourceMinPrecisionFilter'] as int),
      sourceMinScaleFilter: pulumi.Input.fromValue(map['sourceMinScaleFilter'] as int),
    );
  }
}

