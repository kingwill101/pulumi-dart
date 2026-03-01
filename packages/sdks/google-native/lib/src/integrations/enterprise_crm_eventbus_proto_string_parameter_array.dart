// ignore_for_file: unused_element, unnecessary_cast


class EnterpriseCrmEventbusProtoStringParameterArray {
  final List<String>? stringValues;

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
      stringValues: map['stringValues'] == null ? null : (map['stringValues'] as List).cast<String>(),
    );
  }
}

