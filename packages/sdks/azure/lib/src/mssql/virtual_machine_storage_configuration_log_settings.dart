// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineStorageConfigurationLogSettings {
  final pulumi.Input<String> defaultFilePath;
  final pulumi.Input<List<int>> luns;

  /// Creates a new [VirtualMachineStorageConfigurationLogSettings].
  /// [defaultFilePath] Required.
  /// [luns] Required.
  VirtualMachineStorageConfigurationLogSettings({
    required this.defaultFilePath,
    required this.luns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultFilePath': defaultFilePath,
      'luns': luns,
    };
  }

  factory VirtualMachineStorageConfigurationLogSettings.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStorageConfigurationLogSettings(
      defaultFilePath: (map['defaultFilePath'] as String).input(),
      luns: ((map['luns'] as List).cast<int>()).input(),
    );
  }
}

