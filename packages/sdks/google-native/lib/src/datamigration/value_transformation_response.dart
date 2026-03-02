// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apply_hash_response.dart';
import 'assign_specific_value_response.dart';
import 'double_comparison_filter_response.dart';
import 'int_comparison_filter_response.dart';
import 'round_to_scale_response.dart';
import 'value_list_filter_response.dart';

/// Description of data transformation during migration as part of the ConditionalColumnSetValue.
class ValueTransformationResponse {
  /// Optional. Applies a hash function on the data
  final pulumi.Input<ApplyHashResponse> applyHash;
  /// Optional. Set to max_value - if integer or numeric, will use int.maxvalue, etc
  final pulumi.Input<Map<String, dynamic>> assignMaxValue;
  /// Optional. Set to min_value - if integer or numeric, will use int.minvalue, etc
  final pulumi.Input<Map<String, dynamic>> assignMinValue;
  /// Optional. Set to null
  final pulumi.Input<Map<String, dynamic>> assignNull;
  /// Optional. Set to a specific value (value is converted to fit the target data type)
  final pulumi.Input<AssignSpecificValueResponse> assignSpecificValue;
  /// Optional. Filter on relation between source value and compare value of type double.
  final pulumi.Input<DoubleComparisonFilterResponse> doubleComparison;
  /// Optional. Filter on relation between source value and compare value of type integer.
  final pulumi.Input<IntComparisonFilterResponse> intComparison;
  /// Optional. Value is null
  final pulumi.Input<Map<String, dynamic>> isNull;
  /// Optional. Allows the data to change scale
  final pulumi.Input<RoundToScaleResponse> roundScale;
  /// Optional. Value is found in the specified list.
  final pulumi.Input<ValueListFilterResponse> valueList;

  /// Creates a new [ValueTransformationResponse].
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
  ValueTransformationResponse({
    required this.applyHash,
    required this.assignMaxValue,
    required this.assignMinValue,
    required this.assignNull,
    required this.assignSpecificValue,
    required this.doubleComparison,
    required this.intComparison,
    required this.isNull,
    required this.roundScale,
    required this.valueList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyHash': pulumi.Input.mapInputValue<ApplyHashResponse, Map<String, dynamic>>(applyHash, (value) => value.toMap()),
      'assignMaxValue': assignMaxValue,
      'assignMinValue': assignMinValue,
      'assignNull': assignNull,
      'assignSpecificValue': pulumi.Input.mapInputValue<AssignSpecificValueResponse, Map<String, dynamic>>(assignSpecificValue, (value) => value.toMap()),
      'doubleComparison': pulumi.Input.mapInputValue<DoubleComparisonFilterResponse, Map<String, dynamic>>(doubleComparison, (value) => value.toMap()),
      'intComparison': pulumi.Input.mapInputValue<IntComparisonFilterResponse, Map<String, dynamic>>(intComparison, (value) => value.toMap()),
      'isNull': isNull,
      'roundScale': pulumi.Input.mapInputValue<RoundToScaleResponse, Map<String, dynamic>>(roundScale, (value) => value.toMap()),
      'valueList': pulumi.Input.mapInputValue<ValueListFilterResponse, Map<String, dynamic>>(valueList, (value) => value.toMap()),
    };
  }

  factory ValueTransformationResponse.fromMap(Map<String, dynamic> map) {
    return ValueTransformationResponse(
      applyHash: (ApplyHashResponse.fromMap((map['applyHash'] as Map).cast<String, dynamic>())).input(),
      assignMaxValue: ((map['assignMaxValue'] as Map).cast<String, dynamic>()).input(),
      assignMinValue: ((map['assignMinValue'] as Map).cast<String, dynamic>()).input(),
      assignNull: ((map['assignNull'] as Map).cast<String, dynamic>()).input(),
      assignSpecificValue: (AssignSpecificValueResponse.fromMap((map['assignSpecificValue'] as Map).cast<String, dynamic>())).input(),
      doubleComparison: (DoubleComparisonFilterResponse.fromMap((map['doubleComparison'] as Map).cast<String, dynamic>())).input(),
      intComparison: (IntComparisonFilterResponse.fromMap((map['intComparison'] as Map).cast<String, dynamic>())).input(),
      isNull: ((map['isNull'] as Map).cast<String, dynamic>()).input(),
      roundScale: (RoundToScaleResponse.fromMap((map['roundScale'] as Map).cast<String, dynamic>())).input(),
      valueList: (ValueListFilterResponse.fromMap((map['valueList'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

