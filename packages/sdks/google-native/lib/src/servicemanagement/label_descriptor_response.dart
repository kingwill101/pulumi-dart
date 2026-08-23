// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A description of a label.
class LabelDescriptorResponse {
  /// A human-readable description for the label.
  final pulumi.Input<String> description;
  /// The label key.
  final pulumi.Input<String> key;
  /// The type of data that can be assigned to the label.
  final pulumi.Input<String> valueType;

  /// Creates a new [LabelDescriptorResponse].
  /// [description] A human-readable description for the label.
  /// [key] The label key.
  /// [valueType] The type of data that can be assigned to the label.
  const LabelDescriptorResponse({
    required this.description,
    required this.key,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'key': key,
      'valueType': valueType,
    };
  }

  factory LabelDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return LabelDescriptorResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      valueType: pulumi.Input.fromValue(map['valueType'] as String),
    );
  }
}
