// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_var_source_response.dart';

/// EnvVar represents an environment variable present in a Container.
class EnvVarResponse {
  /// Name of the environment variable.
  final pulumi.Input<String> name;
  /// Value of the environment variable. Defaults to "". Variable references are not supported in Cloud Run.
  final pulumi.Input<String> value;
  /// Source for the environment variable's value. Only supports secret_key_ref. Cannot be used if value is not empty.
  final pulumi.Input<EnvVarSourceResponse> valueFrom;

  /// Creates a new [EnvVarResponse].
  /// [name] Name of the environment variable.
  /// [value] Value of the environment variable. Defaults to "". Variable references are not supported in Cloud Run.
  /// [valueFrom] Source for the environment variable's value. Only supports secret_key_ref. Cannot be used if value is not empty.
  const EnvVarResponse({
    required this.name,
    required this.value,
    required this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
      'valueFrom': pulumi.Input.mapInputValue<EnvVarSourceResponse, Map<String, dynamic>>(valueFrom, (value) => value.toMap()),
    };
  }

  factory EnvVarResponse.fromMap(Map<String, dynamic> map) {
    return EnvVarResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
      valueFrom: pulumi.Input.fromValue(EnvVarSourceResponse.fromMap((map['valueFrom']! as Map).cast<String, dynamic>())),
    );
  }
}
