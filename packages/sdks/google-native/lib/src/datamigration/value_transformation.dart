// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apply_hash.dart';
import 'assign_specific_value.dart';
import 'double_comparison_filter.dart';
import 'int_comparison_filter.dart';
import 'round_to_scale.dart';
import 'value_list_filter.dart';

/// Description of data transformation during migration as part of the ConditionalColumnSetValue.
class ValueTransformation {
  /// Optional. Applies a hash function on the data
  final pulumi.Input<ApplyHash>? applyHash;
  /// Optional. Set to max_value - if integer or numeric, will use int.maxvalue, etc
  final pulumi.Input<Map<String, dynamic>>? assignMaxValue;
  /// Optional. Set to min_value - if integer or numeric, will use int.minvalue, etc
  final pulumi.Input<Map<String, dynamic>>? assignMinValue;
  /// Optional. Set to null
  final pulumi.Input<Map<String, dynamic>>? assignNull;
  /// Optional. Set to a specific value (value is converted to fit the target data type)
  final pulumi.Input<AssignSpecificValue>? assignSpecificValue;
  /// Optional. Filter on relation between source value and compare value of type double.
  final pulumi.Input<DoubleComparisonFilter>? doubleComparison;
  /// Optional. Filter on relation between source value and compare value of type integer.
  final pulumi.Input<IntComparisonFilter>? intComparison;
  /// Optional. Value is null
  final pulumi.Input<Map<String, dynamic>>? isNull;
  /// Optional. Allows the data to change scale
  final pulumi.Input<RoundToScale>? roundScale;
  /// Optional. Value is found in the specified list.
  final pulumi.Input<ValueListFilter>? valueList;

  /// Creates a new [ValueTransformation].
  /// [applyHash] Optional. Applies a hash function on the data
  /// [assignMaxValue] Optional. Set to max_value - if integer or numeric, will use int.maxvalue, etc
  /// [assignMinValue] Optional. Set to min_value - if integer or numeric, will use int.minvalue, etc
  /// [assignNull] Optional. Set to null
  /// [assignSpecificValue] Optional. Set to a specific value (value is converted to fit the target data type)
  /// [doubleComparison] Optional. Filter on relation between source value and compare value of type double.
  /// [intComparison] Optional. Filter on relation between source value and compare value of type integer.
  /// [isNull] Optional. Value is null
  /// [roundScale] Optional. Allows the data to change scale
  /// [valueList] Optional. Value is found in the specified list.
  ValueTransformation({
    this.applyHash,
    this.assignMaxValue,
    this.assignMinValue,
    this.assignNull,
    this.assignSpecificValue,
    this.doubleComparison,
    this.intComparison,
    this.isNull,
    this.roundScale,
    this.valueList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyHash': ?pulumi.Input.mapOptionalInputValue<ApplyHash, Map<String, dynamic>>(applyHash, (value) => value.toMap()),
      'assignMaxValue': ?assignMaxValue,
      'assignMinValue': ?assignMinValue,
      'assignNull': ?assignNull,
      'assignSpecificValue': ?pulumi.Input.mapOptionalInputValue<AssignSpecificValue, Map<String, dynamic>>(assignSpecificValue, (value) => value.toMap()),
      'doubleComparison': ?pulumi.Input.mapOptionalInputValue<DoubleComparisonFilter, Map<String, dynamic>>(doubleComparison, (value) => value.toMap()),
      'intComparison': ?pulumi.Input.mapOptionalInputValue<IntComparisonFilter, Map<String, dynamic>>(intComparison, (value) => value.toMap()),
      'isNull': ?isNull,
      'roundScale': ?pulumi.Input.mapOptionalInputValue<RoundToScale, Map<String, dynamic>>(roundScale, (value) => value.toMap()),
      'valueList': ?pulumi.Input.mapOptionalInputValue<ValueListFilter, Map<String, dynamic>>(valueList, (value) => value.toMap()),
    };
  }

  factory ValueTransformation.fromMap(Map<String, dynamic> map) {
    return ValueTransformation(
      applyHash: map['applyHash'] == null ? null : (ApplyHash.fromMap((map['applyHash']! as Map).cast<String, dynamic>())).input(),
      assignMaxValue: map['assignMaxValue'] == null ? null : ((map['assignMaxValue']! as Map).cast<String, dynamic>()).input(),
      assignMinValue: map['assignMinValue'] == null ? null : ((map['assignMinValue']! as Map).cast<String, dynamic>()).input(),
      assignNull: map['assignNull'] == null ? null : ((map['assignNull']! as Map).cast<String, dynamic>()).input(),
      assignSpecificValue: map['assignSpecificValue'] == null ? null : (AssignSpecificValue.fromMap((map['assignSpecificValue']! as Map).cast<String, dynamic>())).input(),
      doubleComparison: map['doubleComparison'] == null ? null : (DoubleComparisonFilter.fromMap((map['doubleComparison']! as Map).cast<String, dynamic>())).input(),
      intComparison: map['intComparison'] == null ? null : (IntComparisonFilter.fromMap((map['intComparison']! as Map).cast<String, dynamic>())).input(),
      isNull: map['isNull'] == null ? null : ((map['isNull']! as Map).cast<String, dynamic>()).input(),
      roundScale: map['roundScale'] == null ? null : (RoundToScale.fromMap((map['roundScale']! as Map).cast<String, dynamic>())).input(),
      valueList: map['valueList'] == null ? null : (ValueListFilter.fromMap((map['valueList']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

