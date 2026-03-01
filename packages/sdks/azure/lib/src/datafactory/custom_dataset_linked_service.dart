// ignore_for_file: unused_element, unnecessary_cast


class CustomDatasetLinkedService {
  /// The name of the Data Factory Linked Service.
  final String name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final Map<String, String>? parameters;

  /// Creates a new [CustomDatasetLinkedService].
  /// [name] The name of the Data Factory Linked Service.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  CustomDatasetLinkedService({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory CustomDatasetLinkedService.fromMap(Map<String, dynamic> map) {
    return CustomDatasetLinkedService(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

