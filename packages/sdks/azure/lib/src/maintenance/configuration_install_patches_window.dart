// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationInstallPatchesWindow {
  /// List of Classification category of patches to be patched. Possible values are `Critical`, `Security`, `UpdateRollup`, `FeaturePack`, `ServicePack`, `Definition`, `Tools` and `Updates`.
  final List<String>? classificationsToIncludes;
  /// List of KB numbers to be excluded from patching.
  final List<String>? kbNumbersToExcludes;
  /// List of KB numbers to be included for patching.
  final List<String>? kbNumbersToIncludes;

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
      classificationsToIncludes: map['classificationsToIncludes'] == null ? null : (map['classificationsToIncludes'] as List).cast<String>(),
      kbNumbersToExcludes: map['kbNumbersToExcludes'] == null ? null : (map['kbNumbersToExcludes'] as List).cast<String>(),
      kbNumbersToIncludes: map['kbNumbersToIncludes'] == null ? null : (map['kbNumbersToIncludes'] as List).cast<String>(),
    );
  }
}

