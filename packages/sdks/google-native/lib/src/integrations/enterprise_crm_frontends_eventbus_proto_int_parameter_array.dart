// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoIntParameterArray {
  final pulumi.Input<List<String>>? intValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoIntParameterArray].
  /// [intValues] Optional.
  const EnterpriseCrmFrontendsEventbusProtoIntParameterArray({
    this.intValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intValues': ?intValues,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoIntParameterArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoIntParameterArray(
      intValues: (() { final guardedValue = map['intValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

