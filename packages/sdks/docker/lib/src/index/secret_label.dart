// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecretLabel {
  /// Name of the label
  final pulumi.Input<String> label;
  /// Value of the label
  final pulumi.Input<String> value;

  /// Creates a new [SecretLabel].
  /// [label] Name of the label
  /// [value] Value of the label
  SecretLabel({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory SecretLabel.fromMap(Map<String, dynamic> map) {
    return SecretLabel(
      label: (map['label'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

