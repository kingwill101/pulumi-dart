// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_numeric_filter.dart';
import 'source_text_filter.dart';
import 'value_transformation.dart';

/// Options to configure rule type ConditionalColumnSetValue. The rule is used to transform the data which is being replicated/migrated. The rule filter field can refer to one or more entities. The rule scope can be one of: Column.
class ConditionalColumnSetValue {
  /// Optional. Custom engine specific features.
  final pulumi.Input<Map<String, String>>? customFeatures;

  /// Optional. Optional filter on source column precision and scale. Used for fixed point numbers such as NUMERIC/NUMBER data types.
  final pulumi.Input<SourceNumericFilter>? sourceNumericFilter;

  /// Optional. Optional filter on source column length. Used for text based data types like varchar.
  final pulumi.Input<SourceTextFilter>? sourceTextFilter;

  /// Description of data transformation during migration.
  final pulumi.Input<ValueTransformation> valueTransformation;

  /// Creates a new [ConditionalColumnSetValue].
  /// [customFeatures] Optional. Custom engine specific features.
  /// [sourceNumericFilter] Optional. Optional filter on source column precision and scale. Used for fixed point numbers such as NUMERIC/NUMBER data types.
  /// [sourceTextFilter] Optional. Optional filter on source column length. Used for text based data types like varchar.
  /// [valueTransformation] Description of data transformation during migration.
  ConditionalColumnSetValue({
    this.customFeatures,
    this.sourceNumericFilter,
    this.sourceTextFilter,
    required this.valueTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFeatures': ?customFeatures,
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
      'valueTransformation':
          pulumi.Input.mapInputValue<ValueTransformation, Map<String, dynamic>>(
            valueTransformation,
            (value) => value.toMap(),
          ),
    };
  }

  factory ConditionalColumnSetValue.fromMap(Map<String, dynamic> map) {
    return ConditionalColumnSetValue(
      customFeatures: (() {
        final guardedValue = map['customFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
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
      valueTransformation: pulumi.Input.fromValue(
        ValueTransformation.fromMap(
          (map['valueTransformation']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
