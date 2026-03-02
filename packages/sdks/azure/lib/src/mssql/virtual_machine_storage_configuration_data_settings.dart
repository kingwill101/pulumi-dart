// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineStorageConfigurationDataSettings {
  final pulumi.Input<String> defaultFilePath;
  final pulumi.Input<List<int>> luns;

  /// Creates a new [VirtualMachineStorageConfigurationDataSettings].
  /// [defaultFilePath] Required.
  /// [luns] Required.
  VirtualMachineStorageConfigurationDataSettings({
    required this.defaultFilePath,
    required this.luns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultFilePath': defaultFilePath,
      'luns': luns,
    };
  }

  factory VirtualMachineStorageConfigurationDataSettings.fromMap(Map<String, dynamic> map) {
    return VirtualMachineStorageConfigurationDataSettings(
      defaultFilePath: (map['defaultFilePath'] as String).input(),
      luns: ((map['luns'] as List).cast<int>()).input(),
    );
  }
}

