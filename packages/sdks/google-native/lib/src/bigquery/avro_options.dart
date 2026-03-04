// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AvroOptions {
  /// [Optional] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  final pulumi.Input<bool>? useAvroLogicalTypes;

  /// Creates a new [AvroOptions].
  /// [useAvroLogicalTypes] [Optional] If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  AvroOptions({this.useAvroLogicalTypes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'useAvroLogicalTypes': ?useAvroLogicalTypes};
  }

  factory AvroOptions.fromMap(Map<String, dynamic> map) {
    return AvroOptions(
      useAvroLogicalTypes: (() {
        final guardedValue = map['useAvroLogicalTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
