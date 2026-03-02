// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_numeric_filter_numeric_filter_option.dart';

/// Filter for fixed point number data types such as NUMERIC/NUMBER
class SourceNumericFilter {
  /// Enum to set the option defining the datatypes numeric filter has to be applied to
  final pulumi.Input<SourceNumericFilterNumericFilterOption> numericFilterOption;
  /// Optional. The filter will match columns with precision smaller than or equal to this number.
  final pulumi.Input<int>? sourceMaxPrecisionFilter;
  /// Optional. The filter will match columns with scale smaller than or equal to this number.
  final pulumi.Input<int>? sourceMaxScaleFilter;
  /// Optional. The filter will match columns with precision greater than or equal to this number.
  final pulumi.Input<int>? sourceMinPrecisionFilter;
  /// Optional. The filter will match columns with scale greater than or equal to this number.
  final pulumi.Input<int>? sourceMinScaleFilter;

  /// Creates a new [SourceNumericFilter].
  /// [numericFilterOption] Enum to set the option defining the datatypes numeric filter has to be applied to
  /// [sourceMaxPrecisionFilter] Optional. The filter will match columns with precision smaller than or equal to this number.
  /// [sourceMaxScaleFilter] Optional. The filter will match columns with scale smaller than or equal to this number.
  /// [sourceMinPrecisionFilter] Optional. The filter will match columns with precision greater than or equal to this number.
  /// [sourceMinScaleFilter] Optional. The filter will match columns with scale greater than or equal to this number.
  SourceNumericFilter({
    required this.numericFilterOption,
    this.sourceMaxPrecisionFilter,
    this.sourceMaxScaleFilter,
    this.sourceMinPrecisionFilter,
    this.sourceMinScaleFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numericFilterOption': pulumi.Input.mapInputValue<SourceNumericFilterNumericFilterOption, String>(numericFilterOption, (value) => value.value),
      'sourceMaxPrecisionFilter': ?sourceMaxPrecisionFilter,
      'sourceMaxScaleFilter': ?sourceMaxScaleFilter,
      'sourceMinPrecisionFilter': ?sourceMinPrecisionFilter,
      'sourceMinScaleFilter': ?sourceMinScaleFilter,
    };
  }

  factory SourceNumericFilter.fromMap(Map<String, dynamic> map) {
    return SourceNumericFilter(
      numericFilterOption: (SourceNumericFilterNumericFilterOption.fromValue(map['numericFilterOption'] as String)).input(),
      sourceMaxPrecisionFilter: map['sourceMaxPrecisionFilter'] == null ? null : (map['sourceMaxPrecisionFilter']! as int).input(),
      sourceMaxScaleFilter: map['sourceMaxScaleFilter'] == null ? null : (map['sourceMaxScaleFilter']! as int).input(),
      sourceMinPrecisionFilter: map['sourceMinPrecisionFilter'] == null ? null : (map['sourceMinPrecisionFilter']! as int).input(),
      sourceMinScaleFilter: map['sourceMinScaleFilter'] == null ? null : (map['sourceMinScaleFilter']! as int).input(),
    );
  }
}

