// ignore_for_file: unused_element, unnecessary_cast


class FlowletDataFlowSourceDataset {
  /// The name for the Data Factory Dataset.
  final String name;
  /// A map of parameters to associate with the Data Factory dataset.
  final Map<String, String>? parameters;

  /// Creates a new [FlowletDataFlowSourceDataset].
  /// [name] The name for the Data Factory Dataset.
  /// [parameters] A map of parameters to associate with the Data Factory dataset.
  FlowletDataFlowSourceDataset({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory FlowletDataFlowSourceDataset.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowSourceDataset(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

