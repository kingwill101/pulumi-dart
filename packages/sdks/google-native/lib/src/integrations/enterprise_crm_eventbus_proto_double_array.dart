// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoDoubleArray {
  final pulumi.Input<List<double>>? values;

  /// Creates a new [EnterpriseCrmEventbusProtoDoubleArray].
  /// [values] Optional.
  EnterpriseCrmEventbusProtoDoubleArray({this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': ?values};
  }

  factory EnterpriseCrmEventbusProtoDoubleArray.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoDoubleArray(
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<double>());
      })(),
    );
  }
}
