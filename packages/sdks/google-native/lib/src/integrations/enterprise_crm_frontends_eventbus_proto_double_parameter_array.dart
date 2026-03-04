// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray {
  final pulumi.Input<List<double>>? doubleValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray].
  /// [doubleValues] Optional.
  EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray({this.doubleValues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'doubleValues': ?doubleValues};
  }

  factory EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray(
      doubleValues: (() {
        final guardedValue = map['doubleValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<double>());
      })(),
    );
  }
}
