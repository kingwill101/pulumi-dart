// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MetadataFilter label name value pairs that are expected to match corresponding labels presented as metadata to the load balancer.
class MetadataFilterLabelMatchComputeV1 {
  /// Name of metadata label. The name can have a maximum length of 1024 characters and must be at least 1 character long.
  final pulumi.Input<String>? name;
  /// The value of the label must match the specified value. value can have a maximum length of 1024 characters.
  final pulumi.Input<String>? value;

  /// Creates a new [MetadataFilterLabelMatchComputeV1].
  /// [name] Name of metadata label. The name can have a maximum length of 1024 characters and must be at least 1 character long.
  /// [value] The value of the label must match the specified value. value can have a maximum length of 1024 characters.
  MetadataFilterLabelMatchComputeV1({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory MetadataFilterLabelMatchComputeV1.fromMap(Map<String, dynamic> map) {
    return MetadataFilterLabelMatchComputeV1(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

