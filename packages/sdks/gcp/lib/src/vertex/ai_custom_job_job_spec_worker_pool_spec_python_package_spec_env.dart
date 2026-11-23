// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnv {
  /// Name of the environment variable.
  final pulumi.Input<String> name;
  /// Value of the environment variable.
  final pulumi.Input<String> value;

  /// Creates a new [AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnv].
  /// [name] Name of the environment variable.
  /// [value] Value of the environment variable.
  const AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnv.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecWorkerPoolSpecPythonPackageSpecEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
