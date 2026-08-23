// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableExternalDataConfigurationAvroOptions {
  /// If is set to true, indicates whether
  /// to interpret logical types as the corresponding BigQuery data type
  /// (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  final pulumi.Input<bool> useAvroLogicalTypes;

  /// Creates a new [TableExternalDataConfigurationAvroOptions].
  /// [useAvroLogicalTypes] If is set to true, indicates whether
  const TableExternalDataConfigurationAvroOptions({
    required this.useAvroLogicalTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useAvroLogicalTypes': useAvroLogicalTypes,
    };
  }

  factory TableExternalDataConfigurationAvroOptions.fromMap(Map<String, dynamic> map) {
    return TableExternalDataConfigurationAvroOptions(
      useAvroLogicalTypes: pulumi.Input.fromValue(map['useAvroLogicalTypes'] as bool),
    );
  }
}
