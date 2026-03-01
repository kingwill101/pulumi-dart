// ignore_for_file: unused_element, unnecessary_cast


/// Describes a container label.
class ContainerLabel {
  /// The name of the container label.
  final String name;
  /// The value of the container label.
  final String value;

  /// Creates a new [ContainerLabel].
  /// [name] The name of the container label.
  /// [value] The value of the container label.
  ContainerLabel({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ContainerLabel.fromMap(Map<String, dynamic> map) {
    return ContainerLabel(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

