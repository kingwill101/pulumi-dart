// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowletDataFlowSourceSchemaLinkedService {
  /// The name for the Data Factory Linked Service with schema.
  final pulumi.Input<String> name;

  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [FlowletDataFlowSourceSchemaLinkedService].
  /// [name] The name for the Data Factory Linked Service with schema.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  FlowletDataFlowSourceSchemaLinkedService({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'parameters': ?parameters};
  }

  factory FlowletDataFlowSourceSchemaLinkedService.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowletDataFlowSourceSchemaLinkedService(
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
