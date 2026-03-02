// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkLabel {
  /// Name of the label
  final pulumi.Input<String> label;
  /// Value of the label
  final pulumi.Input<String> value;

  /// Creates a new [NetworkLabel].
  /// [label] Name of the label
  /// [value] Value of the label
  NetworkLabel({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory NetworkLabel.fromMap(Map<String, dynamic> map) {
    return NetworkLabel(
      label: (map['label'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

