// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoStringArray {
  final pulumi.Input<List<String>>? values;

  /// Creates a new [EnterpriseCrmEventbusProtoStringArray].
  /// [values] Optional.
  EnterpriseCrmEventbusProtoStringArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory EnterpriseCrmEventbusProtoStringArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoStringArray(
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

