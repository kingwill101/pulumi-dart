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
      'applyHash':
          ?pulumi.Input.mapOptionalInputValue<ApplyHash, Map<String, dynamic>>(
            applyHash,
            (value) => value.toMap(),
          ),
      'assignMaxValue': ?assignMaxValue,
      'assignMinValue': ?assignMinValue,
      'assignNull': ?assignNull,
      'assignSpecificValue':
          ?pulumi.Input.mapOptionalInputValue<
            AssignSpecificValue,
            Map<String, dynamic>
          >(assignSpecificValue, (value) => value.toMap()),
      'doubleComparison':
          ?pulumi.Input.mapOptionalInputValue<
            DoubleComparisonFilter,
            Map<String, dynamic>
          >(doubleComparison, (value) => value.toMap()),
      'intComparison':
          ?pulumi.Input.mapOptionalInputValue<
            IntComparisonFilter,
            Map<String, dynamic>
          >(intComparison, (value) => value.toMap()),
      'isNull': ?isNull,
      'roundScale':
          ?pulumi.Input.mapOptionalInputValue<
            RoundToScale,
            Map<String, dynamic>
          >(roundScale, (value) => value.toMap()),
      'valueList':
          ?pulumi.Input.mapOptionalInputValue<
            ValueListFilter,
            Map<String, dynamic>
          >(valueList, (value) => value.toMap()),
    };
  }

  factory ValueTransformation.fromMap(Map<String, dynamic> map) {
    return ValueTransformation(
      applyHash: (() {
        final guardedValue = map['applyHash'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplyHash.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      assignMaxValue: (() {
        final guardedValue = map['assignMaxValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      assignMinValue: (() {
        final guardedValue = map['assignMinValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      assignNull: (() {
        final guardedValue = map['assignNull'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      assignSpecificValue: (() {
        final guardedValue = map['assignSpecificValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AssignSpecificValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      doubleComparison: (() {
        final guardedValue = map['doubleComparison'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DoubleComparisonFilter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      intComparison: (() {
        final guardedValue = map['intComparison'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntComparisonFilter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      isNull: (() {
        final guardedValue = map['isNull'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      roundScale: (() {
        final guardedValue = map['roundScale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RoundToScale.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      valueList: (() {
        final guardedValue = map['valueList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ValueListFilter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
