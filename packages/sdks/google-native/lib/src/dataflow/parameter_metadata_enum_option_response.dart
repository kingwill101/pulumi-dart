// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ParameterMetadataEnumOption specifies the option shown in the enum form.
class ParameterMetadataEnumOptionResponse {
  /// Optional. The description to display for the enum option.
  final pulumi.Input<String> description;
  /// Optional. The label to display for the enum option.
  final pulumi.Input<String> label;
  /// The value of the enum option.
  final pulumi.Input<String> value;

  /// Creates a new [ParameterMetadataEnumOptionResponse].
  /// [description] Optional. The description to display for the enum option.
  /// [label] Optional. The label to display for the enum option.
  /// [value] The value of the enum option.
  const ParameterMetadataEnumOptionResponse({
    required this.description,
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'label': label,
      'value': value,
    };
  }

  factory ParameterMetadataEnumOptionResponse.fromMap(Map<String, dynamic> map) {
    return ParameterMetadataEnumOptionResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
