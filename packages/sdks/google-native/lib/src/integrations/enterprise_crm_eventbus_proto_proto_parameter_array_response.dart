// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoProtoParameterArrayResponse {
  final pulumi.Input<List<Map<String, String>>> protoValues;

  /// Creates a new [EnterpriseCrmEventbusProtoProtoParameterArrayResponse].
  /// [protoValues] Required.
  const EnterpriseCrmEventbusProtoProtoParameterArrayResponse({
    required this.protoValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protoValues': protoValues,
    };
  }

  factory EnterpriseCrmEventbusProtoProtoParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoProtoParameterArrayResponse(
      protoValues: pulumi.Input.fromValue((map['protoValues'] as List).cast<Map<String, String>>()),
    );
  }
}

