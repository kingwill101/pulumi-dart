// ignore_for_file: unused_element, unnecessary_cast


class TriggerCustomEventPipeline {
  /// The Data Factory Pipeline name that the trigger will act on.
  final String name;
  /// The Data Factory Pipeline parameters that the trigger will act on.
  final Map<String, String>? parameters;

  /// Creates a new [TriggerCustomEventPipeline].
  /// [name] The Data Factory Pipeline name that the trigger will act on.
  /// [parameters] The Data Factory Pipeline parameters that the trigger will act on.
  TriggerCustomEventPipeline({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory TriggerCustomEventPipeline.fromMap(Map<String, dynamic> map) {
    return TriggerCustomEventPipeline(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

