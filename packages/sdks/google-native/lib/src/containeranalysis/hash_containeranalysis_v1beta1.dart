// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hash_type_containeranalysis_v1beta1.dart';

/// Container message for hash values.
class HashContaineranalysisV1beta1 {
  /// The type of hash that was performed.
  final pulumi.Input<HashTypeContaineranalysisV1beta1> type;
  /// The hash value.
  final pulumi.Input<String> value;

  /// Creates a new [HashContaineranalysisV1beta1].
  /// [type] The type of hash that was performed.
  /// [value] The hash value.
  const HashContaineranalysisV1beta1({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': pulumi.Input.mapInputValue<HashTypeContaineranalysisV1beta1, String>(type, (value) => value.wireValue),
      'value': value,
    };
  }

  factory HashContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return HashContaineranalysisV1beta1(
      type: pulumi.Input.fromValue(HashTypeContaineranalysisV1beta1.fromValue(map['type']! as String)),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

