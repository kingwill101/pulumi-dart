// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoIntParameterArray {
  final pulumi.Input<List<String>>? intValues;

  /// Creates a new [EnterpriseCrmEventbusProtoIntParameterArray].
  /// [intValues] Optional.
  const EnterpriseCrmEventbusProtoIntParameterArray({
    this.intValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intValues': ?intValues,
    };
  }

  factory EnterpriseCrmEventbusProtoIntParameterArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoIntParameterArray(
      intValues: (() { final guardedValue = map['intValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
