// ignore_for_file: unused_element, unnecessary_cast


class ContainerLabel {
  /// Name of the label
  final String label;
  /// Value of the label
  final String value;

  /// Creates a new [ContainerLabel].
  /// [label] Name of the label
  /// [value] Value of the label
  ContainerLabel({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory ContainerLabel.fromMap(Map<String, dynamic> map) {
    return ContainerLabel(
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }
}

