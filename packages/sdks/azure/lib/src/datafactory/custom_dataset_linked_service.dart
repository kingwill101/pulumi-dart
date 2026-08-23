// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomDatasetLinkedService {
  /// The name of the Data Factory Linked Service.
  final pulumi.Input<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [CustomDatasetLinkedService].
  /// [name] The name of the Data Factory Linked Service.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  const CustomDatasetLinkedService({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
