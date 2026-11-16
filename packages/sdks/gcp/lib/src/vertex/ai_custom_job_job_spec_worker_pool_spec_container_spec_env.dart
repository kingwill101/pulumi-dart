// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnv {
  /// Name of the environment variable.
  final pulumi.Input<String> name;
  /// Value of the environment variable.
  final pulumi.Input<String> value;

  /// Creates a new [AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnv].
  /// [name] Name of the environment variable.
  /// [value] Value of the environment variable.
  const AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnv.fromMap(Map<String, dynamic> map) {
    return AiCustomJobJobSpecWorkerPoolSpecContainerSpecEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
