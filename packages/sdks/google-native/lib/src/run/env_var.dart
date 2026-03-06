// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_var_source.dart';

/// EnvVar represents an environment variable present in a Container.
class EnvVar {
  /// Name of the environment variable.
  final pulumi.Input<String> name;
  /// Value of the environment variable. Defaults to "". Variable references are not supported in Cloud Run.
  final pulumi.Input<String>? value;
  /// Source for the environment variable's value. Only supports secret_key_ref. Cannot be used if value is not empty.
  final pulumi.Input<EnvVarSource>? valueFrom;

  /// Creates a new [EnvVar].
  /// [name] Name of the environment variable.
  /// [value] Value of the environment variable. Defaults to "". Variable references are not supported in Cloud Run.
  /// [valueFrom] Source for the environment variable's value. Only supports secret_key_ref. Cannot be used if value is not empty.
  const EnvVar({
    required this.name,
    this.value,
    this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
      'valueFrom': ?pulumi.Input.mapOptionalInputValue<EnvVarSource, Map<String, dynamic>>(valueFrom, (value) => value.toMap()),
    };
  }

  factory EnvVar.fromMap(Map<String, dynamic> map) {
    return EnvVar(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueFrom: (() { final guardedValue = map['valueFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvVarSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

