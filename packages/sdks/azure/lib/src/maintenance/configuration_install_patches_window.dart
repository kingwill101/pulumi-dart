// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationInstallPatchesWindow {
  /// List of Classification category of patches to be patched. Possible values are `Critical`, `Security`, `UpdateRollup`, `FeaturePack`, `ServicePack`, `Definition`, `Tools` and `Updates`.
  final pulumi.Input<List<String>>? classificationsToIncludes;
  /// List of KB numbers to be excluded from patching.
  final pulumi.Input<List<String>>? kbNumbersToExcludes;
  /// List of KB numbers to be included for patching.
  final pulumi.Input<List<String>>? kbNumbersToIncludes;

  /// Creates a new [ConfigurationInstallPatchesWindow].
  /// [classificationsToIncludes] List of Classification category of patches to be patched. Possible values are `Critical`, `Security`, `UpdateRollup`, `FeaturePack`, `ServicePack`, `Definition`, `Tools` and `Updates`.
  /// [kbNumbersToExcludes] List of KB numbers to be excluded from patching.
  /// [kbNumbersToIncludes] List of KB numbers to be included for patching.
  ConfigurationInstallPatchesWindow({
    this.classificationsToIncludes,
    this.kbNumbersToExcludes,
    this.kbNumbersToIncludes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationsToIncludes': ?classificationsToIncludes,
      'kbNumbersToExcludes': ?kbNumbersToExcludes,
      'kbNumbersToIncludes': ?kbNumbersToIncludes,
    };
  }

  factory ConfigurationInstallPatchesWindow.fromMap(Map<String, dynamic> map) {
    return ConfigurationInstallPatchesWindow(
      classificationsToIncludes: (() { final guardedValue = map['classificationsToIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kbNumbersToExcludes: (() { final guardedValue = map['kbNumbersToExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kbNumbersToIncludes: (() { final guardedValue = map['kbNumbersToIncludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

