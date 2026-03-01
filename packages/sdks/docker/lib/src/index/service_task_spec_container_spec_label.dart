// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecContainerSpecLabel {
  /// Name of the label
  final String label;
  /// Value of the label
  final String value;

  /// Creates a new [ServiceTaskSpecContainerSpecLabel].
  /// [label] Name of the label
  /// [value] Value of the label
  ServiceTaskSpecContainerSpecLabel({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory ServiceTaskSpecContainerSpecLabel.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecLabel(
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }
}

