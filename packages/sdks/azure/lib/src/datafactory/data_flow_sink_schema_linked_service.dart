// ignore_for_file: unused_element, unnecessary_cast


class DataFlowSinkSchemaLinkedService {
  /// The name for the Data Factory Linked Service with schema.
  final String name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final Map<String, String>? parameters;

  /// Creates a new [DataFlowSinkSchemaLinkedService].
  /// [name] The name for the Data Factory Linked Service with schema.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  DataFlowSinkSchemaLinkedService({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory DataFlowSinkSchemaLinkedService.fromMap(Map<String, dynamic> map) {
    return DataFlowSinkSchemaLinkedService(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

