// ignore_for_file: unused_element, unnecessary_cast


class DataFlowTransformationLinkedService {
  /// The name for the Data Factory Linked Service.
  final String name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final Map<String, String>? parameters;

  /// Creates a new [DataFlowTransformationLinkedService].
  /// [name] The name for the Data Factory Linked Service.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  DataFlowTransformationLinkedService({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory DataFlowTransformationLinkedService.fromMap(Map<String, dynamic> map) {
    return DataFlowTransformationLinkedService(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

