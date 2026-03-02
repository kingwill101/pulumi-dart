// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedCustomServiceIntegrationRuntime {
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String> name;
  /// A map of parameters to associate with the integration runtime.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [LinkedCustomServiceIntegrationRuntime].
  /// [name] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [parameters] A map of parameters to associate with the integration runtime.
  LinkedCustomServiceIntegrationRuntime({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory LinkedCustomServiceIntegrationRuntime.fromMap(Map<String, dynamic> map) {
    return LinkedCustomServiceIntegrationRuntime(
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
    );
  }
}

