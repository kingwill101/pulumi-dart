// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoStringParameterArray {
  final pulumi.Input<List<String>>? stringValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoStringParameterArray].
  /// [stringValues] Optional.
  EnterpriseCrmFrontendsEventbusProtoStringParameterArray({this.stringValues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stringValues': ?stringValues};
  }

  factory EnterpriseCrmFrontendsEventbusProtoStringParameterArray.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoStringParameterArray(
      stringValues: (() {
        final guardedValue = map['stringValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
