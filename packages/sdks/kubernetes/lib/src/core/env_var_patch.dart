// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_var_source_patch.dart';

/// EnvVar represents an environment variable present in a Container.
class EnvVarPatch {
  /// Name of the environment variable. May consist of any printable ASCII characters except '='.
  final pulumi.Input<String>? name;
  /// Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
  final pulumi.Input<String>? value;
  /// Source for the environment variable's value. Cannot be used if value is not empty.
  final pulumi.Input<EnvVarSourcePatch>? valueFrom;

  /// Creates a new [EnvVarPatch].
  /// [name] Name of the environment variable. May consist of any printable ASCII characters except '='.
  /// [value] Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
  /// [valueFrom] Source for the environment variable's value. Cannot be used if value is not empty.
  EnvVarPatch({
    this.name,
    this.value,
    this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
      'valueFrom': ?pulumi.Input.mapOptionalInputValue<EnvVarSourcePatch, Map<String, dynamic>>(valueFrom, (value) => value.toMap()),
    };
  }

  factory EnvVarPatch.fromMap(Map<String, dynamic> map) {
    return EnvVarPatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueFrom: (() { final guardedValue = map['valueFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvVarSourcePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

