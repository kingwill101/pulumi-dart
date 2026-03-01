// ignore_for_file: unused_element, unnecessary_cast


class EnterpriseCrmEventbusProtoIntParameterArray {
  final List<String>? intValues;

  /// Creates a new [EnterpriseCrmEventbusProtoIntParameterArray].
  /// [intValues] Optional.
  EnterpriseCrmEventbusProtoIntParameterArray({
    this.intValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intValues': ?intValues,
    };
  }

  factory EnterpriseCrmEventbusProtoIntParameterArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoIntParameterArray(
      intValues: map['intValues'] == null ? null : (map['intValues'] as List).cast<String>(),
    );
  }
}

