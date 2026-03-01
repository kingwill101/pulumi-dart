// ignore_for_file: unused_element, unnecessary_cast


/// Container message for hash values.
class HashResponseContaineranalysisV1beta1 {
  /// The type of hash that was performed.
  final String type;
  /// The hash value.
  final String value;

  /// Creates a new [HashResponseContaineranalysisV1beta1].
  /// [type] The type of hash that was performed.
  /// [value] The hash value.
  HashResponseContaineranalysisV1beta1({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory HashResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return HashResponseContaineranalysisV1beta1(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

