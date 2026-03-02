// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoDoubleParameterArray {
  final pulumi.Input<List<double>>? doubleValues;

  /// Creates a new [EnterpriseCrmEventbusProtoDoubleParameterArray].
  /// [doubleValues] Optional.
  EnterpriseCrmEventbusProtoDoubleParameterArray({
    this.doubleValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleValues': ?doubleValues,
    };
  }

  factory EnterpriseCrmEventbusProtoDoubleParameterArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoDoubleParameterArray(
      doubleValues: map['doubleValues'] == null ? null : ((map['doubleValues']! as List).cast<double>()).input(),
    );
  }
}

