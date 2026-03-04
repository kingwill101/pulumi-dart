// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_numeric_filter.dart';
import 'source_text_filter.dart';

/// Options to configure rule type MultiColumnDatatypeChange. The rule is used to change the data type and associated properties of multiple columns at once. The rule filter field can refer to one or more entities. The rule scope can be one of:Column. This rule requires additional filters to be specified beyond the basic rule filter field, which is the source data type, but the rule supports additional filtering capabilities such as the minimum and maximum field length. All additional filters which are specified are required to be met in order for the rule to be applied (logical AND between the fields).
class MultiColumnDatatypeChange {
  /// Optional. Custom engine specific features.
  final pulumi.Input<Map<String, String>>? customFeatures;

  /// New data type.
  final pulumi.Input<String> newDataType;

  /// Optional. Column fractional seconds precision - used only for timestamp based datatypes - if not specified and relevant uses the source column fractional seconds precision.
  final pulumi.Input<int>? overrideFractionalSecondsPrecision;

  /// Optional. Column length - e.g. varchar (50) - if not specified and relevant uses the source column length.
  final pulumi.Input<String>? overrideLength;

  /// Optional. Column precision - when relevant - if not specified and relevant uses the source column precision.
  final pulumi.Input<int>? overridePrecision;

  /// Optional. Column scale - when relevant - if not specified and relevant uses the source column scale.
  final pulumi.Input<int>? overrideScale;

  /// Filter on source data type.
  final pulumi.Input<String> sourceDataTypeFilter;

  /// Optional. Filter for fixed point number data types such as NUMERIC/NUMBER.
  final pulumi.Input<SourceNumericFilter>? sourceNumericFilter;

  /// Optional. Filter for text-based data types like varchar.
  final pulumi.Input<SourceTextFilter>? sourceTextFilter;

  /// Creates a new [MultiColumnDatatypeChange].
  /// [customFeatures] Optional. Custom engine specific features.
  /// [newDataType] New data type.
  /// [overrideFractionalSecondsPrecision] Optional. Column fractional seconds precision - used only for timestamp based datatypes - if not specified and relevant uses the source column fractional seconds precision.
  /// [overrideLength] Optional. Column length - e.g. varchar (50) - if not specified and relevant uses the source column length.
  /// [overridePrecision] Optional. Column precision - when relevant - if not specified and relevant uses the source column precision.
  /// [overrideScale] Optional. Column scale - when relevant - if not specified and relevant uses the source column scale.
  /// [sourceDataTypeFilter] Filter on source data type.
  /// [sourceNumericFilter] Optional. Filter for fixed point number data types such as NUMERIC/NUMBER.
  /// [sourceTextFilter] Optional. Filter for text-based data types like varchar.
  MultiColumnDatatypeChange({
    this.customFeatures,
    required this.newDataType,
    this.overrideFractionalSecondsPrecision,
    this.overrideLength,
    this.overridePrecision,
    this.overrideScale,
    required this.sourceDataTypeFilter,
    this.sourceNumericFilter,
    this.sourceTextFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFeatures': ?customFeatures,
      'newDataType': newDataType,
      'overrideFractionalSecondsPrecision': ?overrideFractionalSecondsPrecision,
      'overrideLength': ?overrideLength,
      'overridePrecision': ?overridePrecision,
      'overrideScale': ?overrideScale,
      'sourceDataTypeFilter': sourceDataTypeFilter,
      'sourceNumericFilter':
          ?pulumi.Input.mapOptionalInputValue<
            SourceNumericFilter,
            Map<String, dynamic>
          >(sourceNumericFilter, (value) => value.toMap()),
      'sourceTextFilter':
          ?pulumi.Input.mapOptionalInputValue<
            SourceTextFilter,
            Map<String, dynamic>
          >(sourceTextFilter, (value) => value.toMap()),
    };
  }

  factory MultiColumnDatatypeChange.fromMap(Map<String, dynamic> map) {
    return MultiColumnDatatypeChange(
      customFeatures: (() {
        final guardedValue = map['customFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      newDataType: pulumi.Input.fromValue(map['newDataType'] as String),
      overrideFractionalSecondsPrecision: (() {
        final guardedValue = map['overrideFractionalSecondsPrecision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      overrideLength: (() {
        final guardedValue = map['overrideLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      overridePrecision: (() {
        final guardedValue = map['overridePrecision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      overrideScale: (() {
        final guardedValue = map['overrideScale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sourceDataTypeFilter: pulumi.Input.fromValue(
        map['sourceDataTypeFilter'] as String,
      ),
      sourceNumericFilter: (() {
        final guardedValue = map['sourceNumericFilter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SourceNumericFilter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceTextFilter: (() {
        final guardedValue = map['sourceTextFilter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SourceTextFilter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
