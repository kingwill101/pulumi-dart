// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoIntArray {
  final pulumi.Input<List<String>>? values;

  /// Creates a new [EnterpriseCrmEventbusProtoIntArray].
  /// [values] Optional.
  EnterpriseCrmEventbusProtoIntArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory EnterpriseCrmEventbusProtoIntArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoIntArray(
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

