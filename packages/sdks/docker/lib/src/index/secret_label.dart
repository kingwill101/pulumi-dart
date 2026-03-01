// ignore_for_file: unused_element, unnecessary_cast


class SecretLabel {
  /// Name of the label
  final String label;
  /// Value of the label
  final String value;

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
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }
}

