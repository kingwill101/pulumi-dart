// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceIntegrationRuntime {
  /// The integration runtime reference to associate with the Synapse Linked Service.
  final pulumi.Input<String> name;

  /// A map of parameters to associate with the integration runtime.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [LinkedServiceIntegrationRuntime].
  /// [name] The integration runtime reference to associate with the Synapse Linked Service.
  /// [parameters] A map of parameters to associate with the integration runtime.
  LinkedServiceIntegrationRuntime({required this.name, this.parameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'parameters': ?parameters};
  }

  factory LinkedServiceIntegrationRuntime.fromMap(Map<String, dynamic> map) {
    return LinkedServiceIntegrationRuntime(
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
