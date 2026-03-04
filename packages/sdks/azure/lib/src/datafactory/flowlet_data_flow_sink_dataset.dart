// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowletDataFlowSinkDataset {
  /// The name for the Data Factory Dataset.
  final pulumi.Input<String> name;

  /// A map of parameters to associate with the Data Factory dataset.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [FlowletDataFlowSinkDataset].
  /// [name] The name for the Data Factory Dataset.
  /// [parameters] A map of parameters to associate with the Data Factory dataset.
  FlowletDataFlowSinkDataset({required this.name, this.parameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'parameters': ?parameters};
  }

  factory FlowletDataFlowSinkDataset.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowSinkDataset(
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
