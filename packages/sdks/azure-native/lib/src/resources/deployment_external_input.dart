// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment external input for parameterization.
class DeploymentExternalInput {
  /// External input value.
  final pulumi.Input<dynamic> value;

  /// Creates a new [DeploymentExternalInput].
  /// [value] External input value.
  DeploymentExternalInput({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DeploymentExternalInput.fromMap(Map<String, dynamic> map) {
    return DeploymentExternalInput(
      value: pulumi.Input.fromValue(map['value']),
    );
  }
}

