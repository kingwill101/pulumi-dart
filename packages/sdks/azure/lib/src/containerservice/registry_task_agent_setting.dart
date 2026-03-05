// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryTaskAgentSetting {
  /// The number of cores required for the Container Registry Task. Possible value is `2`.
  final pulumi.Input<int> cpu;

  /// Creates a new [RegistryTaskAgentSetting].
  /// [cpu] The number of cores required for the Container Registry Task. Possible value is `2`.
  RegistryTaskAgentSetting({
    required this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
    };
  }

  factory RegistryTaskAgentSetting.fromMap(Map<String, dynamic> map) {
    return RegistryTaskAgentSetting(
      cpu: pulumi.Input.fromValue(map['cpu'] as int),
    );
  }
}

