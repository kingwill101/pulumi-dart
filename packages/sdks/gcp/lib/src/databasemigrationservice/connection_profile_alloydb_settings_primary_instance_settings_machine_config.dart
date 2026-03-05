// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig {
  /// The number of CPU's in the VM instance.
  final pulumi.Input<int> cpuCount;

  /// Creates a new [ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig].
  /// [cpuCount] The number of CPU's in the VM instance.
  ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig({
    required this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
    };
  }

  factory ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig(
      cpuCount: pulumi.Input.fromValue(map['cpuCount'] as int),
    );
  }
}

