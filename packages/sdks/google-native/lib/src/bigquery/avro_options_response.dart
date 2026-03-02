// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AvroOptionsResponse {
  /// [Optional] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  final pulumi.Input<bool> useAvroLogicalTypes;

  /// Creates a new [AvroOptionsResponse].
  /// [useAvroLogicalTypes] [Optional] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  AvroOptionsResponse({
    required this.useAvroLogicalTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useAvroLogicalTypes': useAvroLogicalTypes,
    };
  }

  factory AvroOptionsResponse.fromMap(Map<String, dynamic> map) {
    return AvroOptionsResponse(
      useAvroLogicalTypes: (map['useAvroLogicalTypes'] as bool).input(),
    );
  }
}

