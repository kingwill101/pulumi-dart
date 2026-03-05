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
      'numericFilterOption': pulumi.Input.mapInputValue<SourceNumericFilterNumericFilterOption, String>(numericFilterOption, (value) => value.wireValue),
      'sourceMaxPrecisionFilter': ?sourceMaxPrecisionFilter,
      'sourceMaxScaleFilter': ?sourceMaxScaleFilter,
      'sourceMinPrecisionFilter': ?sourceMinPrecisionFilter,
      'sourceMinScaleFilter': ?sourceMinScaleFilter,
    };
  }

  factory SourceNumericFilter.fromMap(Map<String, dynamic> map) {
    return SourceNumericFilter(
      numericFilterOption: pulumi.Input.fromValue(SourceNumericFilterNumericFilterOption.fromValue(map['numericFilterOption']! as String)),
      sourceMaxPrecisionFilter: (() { final guardedValue = map['sourceMaxPrecisionFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceMaxScaleFilter: (() { final guardedValue = map['sourceMaxScaleFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceMinPrecisionFilter: (() { final guardedValue = map['sourceMinPrecisionFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceMinScaleFilter: (() { final guardedValue = map['sourceMinScaleFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

