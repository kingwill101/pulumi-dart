// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataFlowSourceDataset {
  /// The name for the Data Factory Dataset.
  final pulumi.Input<String> name;
  /// A map of parameters to associate with the Data Factory dataset.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [DataFlowSourceDataset].
  /// [name] The name for the Data Factory Dataset.
  /// [parameters] A map of parameters to associate with the Data Factory dataset.
  DataFlowSourceDataset({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory DataFlowSourceDataset.fromMap(Map<String, dynamic> map) {
    return DataFlowSourceDataset(
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
    );
  }
}

