// ignore_for_file: unused_element, unnecessary_cast

import 'hash_type_containeranalysis_v1beta1.dart';

/// Container message for hash values.
class HashContaineranalysisV1beta1 {
  /// The type of hash that was performed.
  final HashTypeContaineranalysisV1beta1 type;
  /// The hash value.
  final String value;

  /// Creates a new [HashContaineranalysisV1beta1].
  /// [type] The type of hash that was performed.
  /// [value] The hash value.
  HashContaineranalysisV1beta1({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type.value,
      'value': value,
    };
  }

  factory HashContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return HashContaineranalysisV1beta1(
      type: HashTypeContaineranalysisV1beta1.fromValue(map['type'] as String),
      value: map['value'] as String,
    );
  }
}

