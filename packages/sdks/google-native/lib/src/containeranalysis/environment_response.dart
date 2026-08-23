// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an object for the environment field in in-toto links. The suggested fields are "variables", "filesystem", and "workdir".
class EnvironmentResponse {
  final pulumi.Input<Map<String, String>> customValues;

  /// Creates a new [EnvironmentResponse].
  /// [customValues] Required.
  const EnvironmentResponse({
    required this.customValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customValues': customValues,
    };
  }

  factory EnvironmentResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentResponse(
      customValues: pulumi.Input.fromValue((map['customValues'] as Map).cast<String, String>()),
    );
  }
}
