// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_numeric_filter_response.dart';
import 'source_text_filter_response.dart';

/// Options to configure rule type MultiColumnDatatypeChange. The rule is used to change the data type and associated properties of multiple columns at once. The rule filter field can refer to one or more entities. The rule scope can be one of:Column. This rule requires additional filters to be specified beyond the basic rule filter field, which is the source data type, but the rule supports additional filtering capabilities such as the minimum and maximum field length. All additional filters which are specified are required to be met in order for the rule to be applied (logical AND between the fields).
class MultiColumnDatatypeChangeResponse {
  /// Optional. Custom engine specific features.
  final pulumi.Input<Map<String, String>> customFeatures;
  /// New data type.
  final pulumi.Input<String> newDataType;
  /// Optional. Column fractional seconds precision - used only for timestamp based datatypes - if not specified and relevant uses the source column fractional seconds precision.
  final pulumi.Input<int> overrideFractionalSecondsPrecision;
  /// Optional. Column length - e.g. varchar (50) - if not specified and relevant uses the source column length.
  final pulumi.Input<String> overrideLength;
  /// Optional. Column precision - when relevant - if not specified and relevant uses the source column precision.
  final pulumi.Input<int> overridePrecision;
  /// Optional. Column scale - when relevant - if not specified and relevant uses the source column scale.
  final pulumi.Input<int> overrideScale;
  /// Filter on source data type.
  final pulumi.Input<String> sourceDataTypeFilter;
  /// Optional. Filter for fixed point number data types such as NUMERIC/NUMBER.
  final pulumi.Input<SourceNumericFilterResponse> sourceNumericFilter;
  /// Optional. Filter for text-based data types like varchar.
  final pulumi.Input<SourceTextFilterResponse> sourceTextFilter;

  /// Creates a new [MultiColumnDatatypeChangeResponse].
  /// [customFeatures] Optional. Custom engine specific features.
  /// [newDataType] New data type.
  /// [overrideFractionalSecondsPrecision] Optional. Column fractional seconds precision - used only for timestamp based datatypes - if not specified and relevant uses the source column fractional seconds precision.
  /// [overrideLength] Optional. Column length - e.g. varchar (50) - if not specified and relevant uses the source column length.
  /// [overridePrecision] Optional. Column precision - when relevant - if not specified and relevant uses the source column precision.
  /// [overrideScale] Optional. Column scale - when relevant - if not specified and relevant uses the source column scale.
  /// [sourceDataTypeFilter] Filter on source data type.
  /// [sourceNumericFilter] Optional. Filter for fixed point number data types such as NUMERIC/NUMBER.
  /// [sourceTextFilter] Optional. Filter for text-based data types like varchar.
  const MultiColumnDatatypeChangeResponse({
    required this.customFeatures,
    required this.newDataType,
    required this.overrideFractionalSecondsPrecision,
    required this.overrideLength,
    required this.overridePrecision,
    required this.overrideScale,
    required this.sourceDataTypeFilter,
    required this.sourceNumericFilter,
    required this.sourceTextFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFeatures': customFeatures,
      'newDataType': newDataType,
      'overrideFractionalSecondsPrecision': overrideFractionalSecondsPrecision,
      'overrideLength': overrideLength,
      'overridePrecision': overridePrecision,
      'overrideScale': overrideScale,
      'sourceDataTypeFilter': sourceDataTypeFilter,
      'sourceNumericFilter': pulumi.Input.mapInputValue<SourceNumericFilterResponse, Map<String, dynamic>>(sourceNumericFilter, (value) => value.toMap()),
      'sourceTextFilter': pulumi.Input.mapInputValue<SourceTextFilterResponse, Map<String, dynamic>>(sourceTextFilter, (value) => value.toMap()),
    };
  }

  factory MultiColumnDatatypeChangeResponse.fromMap(Map<String, dynamic> map) {
    return MultiColumnDatatypeChangeResponse(
      customFeatures: pulumi.Input.fromValue((map['customFeatures'] as Map).cast<String, String>()),
      newDataType: pulumi.Input.fromValue(map['newDataType'] as String),
      overrideFractionalSecondsPrecision: pulumi.Input.fromValue(map['overrideFractionalSecondsPrecision'] as int),
      overrideLength: pulumi.Input.fromValue(map['overrideLength'] as String),
      overridePrecision: pulumi.Input.fromValue(map['overridePrecision'] as int),
      overrideScale: pulumi.Input.fromValue(map['overrideScale'] as int),
      sourceDataTypeFilter: pulumi.Input.fromValue(map['sourceDataTypeFilter'] as String),
      sourceNumericFilter: pulumi.Input.fromValue(SourceNumericFilterResponse.fromMap((map['sourceNumericFilter']! as Map).cast<String, dynamic>())),
      sourceTextFilter: pulumi.Input.fromValue(SourceTextFilterResponse.fromMap((map['sourceTextFilter']! as Map).cast<String, dynamic>())),
    );
  }
}
