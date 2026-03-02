// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataFlowSinkLinkedService {
  /// The name for the Data Factory Linked Service.
  final pulumi.Input<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [DataFlowSinkLinkedService].
  /// [name] The name for the Data Factory Linked Service.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  DataFlowSinkLinkedService({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory DataFlowSinkLinkedService.fromMap(Map<String, dynamic> map) {
    return DataFlowSinkLinkedService(
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
    );
  }
}

