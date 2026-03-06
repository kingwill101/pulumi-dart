// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_numeric_filter_response.dart';
import 'source_text_filter_response.dart';
import 'value_transformation_response.dart';

/// Options to configure rule type ConditionalColumnSetValue. The rule is used to transform the data which is being replicated/migrated. The rule filter field can refer to one or more entities. The rule scope can be one of: Column.
class ConditionalColumnSetValueResponse {
  /// Optional. Custom engine specific features.
  final pulumi.Input<Map<String, String>> customFeatures;
  /// Optional. Optional filter on source column precision and scale. Used for fixed point numbers such as NUMERIC/NUMBER data types.
  final pulumi.Input<SourceNumericFilterResponse> sourceNumericFilter;
  /// Optional. Optional filter on source column length. Used for text based data types like varchar.
  final pulumi.Input<SourceTextFilterResponse> sourceTextFilter;
  /// Description of data transformation during migration.
  final pulumi.Input<ValueTransformationResponse> valueTransformation;

  /// Creates a new [ConditionalColumnSetValueResponse].
  /// [customFeatures] Optional. Custom engine specific features.
  /// [sourceNumericFilter] Optional. Optional filter on source column precision and scale. Used for fixed point numbers such as NUMERIC/NUMBER data types.
  /// [sourceTextFilter] Optional. Optional filter on source column length. Used for text based data types like varchar.
  /// [valueTransformation] Description of data transformation during migration.
  const ConditionalColumnSetValueResponse({
    required this.customFeatures,
    required this.sourceNumericFilter,
    required this.sourceTextFilter,
    required this.valueTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFeatures': customFeatures,
      'sourceNumericFilter': pulumi.Input.mapInputValue<SourceNumericFilterResponse, Map<String, dynamic>>(sourceNumericFilter, (value) => value.toMap()),
      'sourceTextFilter': pulumi.Input.mapInputValue<SourceTextFilterResponse, Map<String, dynamic>>(sourceTextFilter, (value) => value.toMap()),
      'valueTransformation': pulumi.Input.mapInputValue<ValueTransformationResponse, Map<String, dynamic>>(valueTransformation, (value) => value.toMap()),
    };
  }

  factory ConditionalColumnSetValueResponse.fromMap(Map<String, dynamic> map) {
    return ConditionalColumnSetValueResponse(
      customFeatures: pulumi.Input.fromValue((map['customFeatures'] as Map).cast<String, String>()),
      sourceNumericFilter: pulumi.Input.fromValue(SourceNumericFilterResponse.fromMap((map['sourceNumericFilter']! as Map).cast<String, dynamic>())),
      sourceTextFilter: pulumi.Input.fromValue(SourceTextFilterResponse.fromMap((map['sourceTextFilter']! as Map).cast<String, dynamic>())),
      valueTransformation: pulumi.Input.fromValue(ValueTransformationResponse.fromMap((map['valueTransformation']! as Map).cast<String, dynamic>())),
    );
  }
}

