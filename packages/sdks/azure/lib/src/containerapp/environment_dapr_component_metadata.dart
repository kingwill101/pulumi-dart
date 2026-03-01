// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentDaprComponentMetadata {
  /// The name of the Metadata configuration item.
  final String name;
  /// The name of a secret specified in the `secrets` block that contains the value for this metadata configuration item.
  final String? secretName;
  /// The value for this metadata configuration item.
  final String? value;

  /// Creates a new [EnvironmentDaprComponentMetadata].
  /// [name] The name of the Metadata configuration item.
  /// [secretName] The name of a secret specified in the `secrets` block that contains the value for this metadata configuration item.
  /// [value] The value for this metadata configuration item.
  EnvironmentDaprComponentMetadata({
    required this.name,
    this.secretName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secretName': ?secretName,
      'value': ?value,
    };
  }

  factory EnvironmentDaprComponentMetadata.fromMap(Map<String, dynamic> map) {
    return EnvironmentDaprComponentMetadata(
      name: map['name'] as String,
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

