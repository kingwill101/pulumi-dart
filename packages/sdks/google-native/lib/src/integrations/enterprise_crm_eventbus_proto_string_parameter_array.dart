// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoStringParameterArray {
  final pulumi.Input<List<String>>? stringValues;

  /// Creates a new [EnterpriseCrmEventbusProtoStringParameterArray].
  /// [stringValues] Optional.
  EnterpriseCrmEventbusProtoStringParameterArray({
    this.stringValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringValues': ?stringValues,
    };
  }

  factory EnterpriseCrmEventbusProtoStringParameterArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoStringParameterArray(
      stringValues: (() { final guardedValue = map['stringValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

