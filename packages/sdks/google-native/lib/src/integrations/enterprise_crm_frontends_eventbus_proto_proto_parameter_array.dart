// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoProtoParameterArray {
  final pulumi.Input<List<Map<String, String>>>? protoValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoProtoParameterArray].
  /// [protoValues] Optional.
  const EnterpriseCrmFrontendsEventbusProtoProtoParameterArray({
    this.protoValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protoValues': ?protoValues,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoProtoParameterArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoProtoParameterArray(
      protoValues: (() { final guardedValue = map['protoValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, String>>()); })(),
    );
  }
}
