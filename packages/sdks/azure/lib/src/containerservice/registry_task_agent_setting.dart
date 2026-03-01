// ignore_for_file: unused_element, unnecessary_cast


class RegistryTaskAgentSetting {
  /// The number of cores required for the Container Registry Task. Possible value is `2`.
  final int cpu;

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
      cpu: map['cpu'] as int,
    );
  }
}

