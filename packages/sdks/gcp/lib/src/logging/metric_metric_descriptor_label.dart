// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricMetricDescriptorLabel {
  /// A human-readable description for the label.
  final pulumi.Input<String>? description;
  /// The label key.
  final pulumi.Input<String> key;
  /// The type of data that can be assigned to the label.
  /// Default value is `STRING`.
  /// Possible values are: `BOOL`, `INT64`, `STRING`.
  final pulumi.Input<String>? valueType;

  /// Creates a new [MetricMetricDescriptorLabel].
  /// [description] A human-readable description for the label.
  /// [key] The label key.
  /// [valueType] The type of data that can be assigned to the label.
  const MetricMetricDescriptorLabel({
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

  factory MetricMetricDescriptorLabel.fromMap(Map<String, dynamic> map) {
    return MetricMetricDescriptorLabel(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

