// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse {
  final pulumi.Input<List<Map<String, String>>> protoValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse].
  /// [protoValues] Required.
  const EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse({
    required this.protoValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protoValues': protoValues,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse(
      protoValues: pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(map['protoValues']!, (value) => (value as Map).cast<String, String>())),
    );
  }
}
