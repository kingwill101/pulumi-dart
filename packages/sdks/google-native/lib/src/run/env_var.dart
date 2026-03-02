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
  EnvVar({
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
      name: (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
      valueFrom: map['valueFrom'] == null ? null : (EnvVarSource.fromMap((map['valueFrom']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

