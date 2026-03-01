// ignore_for_file: unused_element, unnecessary_cast


class DataFlowSourceRejectedLinkedService {
  /// The name for the Data Factory Linked Service with schema.
  final String name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final Map<String, String>? parameters;

  /// Creates a new [DataFlowSourceRejectedLinkedService].
  /// [name] The name for the Data Factory Linked Service with schema.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  DataFlowSourceRejectedLinkedService({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory DataFlowSourceRejectedLinkedService.fromMap(Map<String, dynamic> map) {
    return DataFlowSourceRejectedLinkedService(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

