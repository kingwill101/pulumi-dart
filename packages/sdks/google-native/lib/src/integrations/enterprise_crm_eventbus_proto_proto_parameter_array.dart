// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoProtoParameterArray {
  final pulumi.Input<List<Map<String, String>>>? protoValues;

  /// Creates a new [EnterpriseCrmEventbusProtoProtoParameterArray].
  /// [protoValues] Optional.
  EnterpriseCrmEventbusProtoProtoParameterArray({
    this.protoValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protoValues': ?protoValues,
    };
  }

  factory EnterpriseCrmEventbusProtoProtoParameterArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoProtoParameterArray(
      protoValues: map['protoValues'] == null ? null : ((map['protoValues']! as List).cast<Map<String, String>>()).input(),
    );
  }
}

