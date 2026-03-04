// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataFlowTransformationLinkedService {
  /// The name for the Data Factory Linked Service.
  final pulumi.Input<String> name;

  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [DataFlowTransformationLinkedService].
  /// [name] The name for the Data Factory Linked Service.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  DataFlowTransformationLinkedService({required this.name, this.parameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'parameters': ?parameters};
  }

  factory DataFlowTransformationLinkedService.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataFlowTransformationLinkedService(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
