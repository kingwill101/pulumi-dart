// ignore_for_file: unused_element, unnecessary_cast

import 'env_var_source.dart';

/// EnvVar represents an environment variable present in a Container.
class EnvVar {
  /// Name of the environment variable. May consist of any printable ASCII characters except '='.
  final String name;
  /// Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
  final String? value;
  /// Source for the environment variable's value. Cannot be used if value is not empty.
  final EnvVarSource? valueFrom;

  /// Creates a new [EnvVar].
  /// [name] Name of the environment variable. May consist of any printable ASCII characters except '='.
  /// [value] Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
  /// [valueFrom] Source for the environment variable's value. Cannot be used if value is not empty.
  EnvVar({
    required this.name,
    this.value,
    this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
      'valueFrom': ?valueFrom == null ? null : valueFrom!.toMap(),
    };
  }

  factory EnvVar.fromMap(Map<String, dynamic> map) {
    return EnvVar(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      valueFrom: map['valueFrom'] == null ? null : EnvVarSource.fromMap((map['valueFrom'] as Map).cast<String, dynamic>()),
    );
  }
}

