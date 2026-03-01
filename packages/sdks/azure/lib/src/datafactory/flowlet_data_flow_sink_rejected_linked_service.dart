// ignore_for_file: unused_element, unnecessary_cast


class FlowletDataFlowSinkRejectedLinkedService {
  /// The name for the Data Factory Linked Service with schema.
  final String name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final Map<String, String>? parameters;

  /// Creates a new [FlowletDataFlowSinkRejectedLinkedService].
  /// [name] The name for the Data Factory Linked Service with schema.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  FlowletDataFlowSinkRejectedLinkedService({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory FlowletDataFlowSinkRejectedLinkedService.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowSinkRejectedLinkedService(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

