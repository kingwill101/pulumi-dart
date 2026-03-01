// ignore_for_file: unused_element, unnecessary_cast


class FlowletDataFlowSourceLinkedService {
  /// The name for the Data Factory Linked Service.
  final String name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final Map<String, String>? parameters;

  /// Creates a new [FlowletDataFlowSourceLinkedService].
  /// [name] The name for the Data Factory Linked Service.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  FlowletDataFlowSourceLinkedService({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory FlowletDataFlowSourceLinkedService.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowSourceLinkedService(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

