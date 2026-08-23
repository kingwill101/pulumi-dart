// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse {
  final pulumi.Input<List<double>> doubleValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse].
  /// [doubleValues] Required.
  const EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse({
    required this.doubleValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleValues': doubleValues,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse(
      doubleValues: pulumi.Input.fromValue((map['doubleValues'] as List).cast<double>()),
    );
  }
}
