// ignore_for_file: unused_element, unnecessary_cast


class DataFlowSourceSchemaLinkedService {
  /// The name for the Data Factory Linked Service with schema.
  final String name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final Map<String, String>? parameters;

  /// Creates a new [DataFlowSourceSchemaLinkedService].
  /// [name] The name for the Data Factory Linked Service with schema.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  DataFlowSourceSchemaLinkedService({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory DataFlowSourceSchemaLinkedService.fromMap(Map<String, dynamic> map) {
    return DataFlowSourceSchemaLinkedService(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

