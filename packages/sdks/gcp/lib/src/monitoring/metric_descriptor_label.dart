// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricDescriptorLabel {
  /// A human-readable description for the label.
  final pulumi.Input<String>? description;
  /// The key for this label. The key must not exceed 100 characters. The first character of the key must be an upper- or lower-case letter, the remaining characters must be letters, digits or underscores, and the key must match the regular expression [a-zA-Z][a-zA-Z0-9_]*
  final pulumi.Input<String> key;
  /// The type of data that can be assigned to the label.
  /// Default value is `STRING`.
  /// Possible values are: `STRING`, `BOOL`, `INT64`.
  final pulumi.Input<String>? valueType;

  /// Creates a new [MetricDescriptorLabel].
  /// [description] A human-readable description for the label.
  /// [key] The key for this label. The key must not exceed 100 characters. The first character of the key must be an upper- or lower-case letter, the remaining characters must be letters, digits or underscores, and the key must match the regular expression [a-zA-Z][a-zA-Z0-9_]*
  /// [valueType] The type of data that can be assigned to the label.
  const MetricDescriptorLabel({
    this.description,
    required this.key,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'key': key,
      'valueType': ?valueType,
    };
  }

  factory MetricDescriptorLabel.fromMap(Map<String, dynamic> map) {
    return MetricDescriptorLabel(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

