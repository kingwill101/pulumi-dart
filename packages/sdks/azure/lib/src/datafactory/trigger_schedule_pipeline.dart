// ignore_for_file: unused_element, unnecessary_cast


class TriggerSchedulePipeline {
  /// Reference pipeline name.
  final String name;
  /// The pipeline parameters that the trigger will act upon.
  final Map<String, String>? parameters;

  /// Creates a new [TriggerSchedulePipeline].
  /// [name] Reference pipeline name.
  /// [parameters] The pipeline parameters that the trigger will act upon.
  TriggerSchedulePipeline({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory TriggerSchedulePipeline.fromMap(Map<String, dynamic> map) {
    return TriggerSchedulePipeline(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

