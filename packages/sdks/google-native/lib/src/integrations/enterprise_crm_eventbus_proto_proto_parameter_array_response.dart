// ignore_for_file: unused_element, unnecessary_cast


class EnterpriseCrmEventbusProtoProtoParameterArrayResponse {
  final List<Map<String, String>> protoValues;

  /// Creates a new [EnterpriseCrmEventbusProtoProtoParameterArrayResponse].
  /// [protoValues] Required.
  EnterpriseCrmEventbusProtoProtoParameterArrayResponse({
    required this.protoValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protoValues': protoValues,
    };
  }

  factory EnterpriseCrmEventbusProtoProtoParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoProtoParameterArrayResponse(
      protoValues: (map['protoValues'] as List).cast<Map<String, String>>(),
    );
  }
}

