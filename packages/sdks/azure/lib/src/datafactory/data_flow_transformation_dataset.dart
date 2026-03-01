// ignore_for_file: unused_element, unnecessary_cast


class DataFlowTransformationDataset {
  /// The name for the Data Factory Dataset.
  final String name;
  /// A map of parameters to associate with the Data Factory dataset.
  final Map<String, String>? parameters;

  /// Creates a new [DataFlowTransformationDataset].
  /// [name] The name for the Data Factory Dataset.
  /// [parameters] A map of parameters to associate with the Data Factory dataset.
  DataFlowTransformationDataset({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory DataFlowTransformationDataset.fromMap(Map<String, dynamic> map) {
    return DataFlowTransformationDataset(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

