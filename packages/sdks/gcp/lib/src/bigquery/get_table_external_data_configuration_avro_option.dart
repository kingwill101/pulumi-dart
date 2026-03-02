// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableExternalDataConfigurationAvroOption {
  /// If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  final pulumi.Input<bool> useAvroLogicalTypes;

  /// Creates a new [GetTableExternalDataConfigurationAvroOption].
  /// [useAvroLogicalTypes] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  GetTableExternalDataConfigurationAvroOption({
    required this.useAvroLogicalTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useAvroLogicalTypes': useAvroLogicalTypes,
    };
  }

  factory GetTableExternalDataConfigurationAvroOption.fromMap(Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationAvroOption(
      useAvroLogicalTypes: (map['useAvroLogicalTypes'] as bool).input(),
    );
  }
}

