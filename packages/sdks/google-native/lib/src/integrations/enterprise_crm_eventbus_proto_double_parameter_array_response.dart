// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoDoubleParameterArrayResponse {
  final pulumi.Input<List<double>> doubleValues;

  /// Creates a new [EnterpriseCrmEventbusProtoDoubleParameterArrayResponse].
  /// [doubleValues] Required.
  const EnterpriseCrmEventbusProtoDoubleParameterArrayResponse({
    required this.doubleValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleValues': doubleValues,
    };
  }

  factory EnterpriseCrmEventbusProtoDoubleParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoDoubleParameterArrayResponse(
      doubleValues: pulumi.Input.fromValue((map['doubleValues'] as List).cast<double>()),
    );
  }
}
