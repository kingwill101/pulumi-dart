// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoBooleanParameterArray {
  final pulumi.Input<List<bool>>? booleanValues;

  /// Creates a new [EnterpriseCrmEventbusProtoBooleanParameterArray].
  /// [booleanValues] Optional.
  const EnterpriseCrmEventbusProtoBooleanParameterArray({
    this.booleanValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValues': ?booleanValues,
    };
  }

  factory EnterpriseCrmEventbusProtoBooleanParameterArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoBooleanParameterArray(
      booleanValues: (() { final guardedValue = map['booleanValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<bool>()); })(),
    );
  }
}
