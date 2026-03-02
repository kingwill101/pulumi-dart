// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationInstallPatchWindow {
  /// List of Classification category of patches to be patched.
  final pulumi.Input<List<String>> classificationsToIncludes;
  /// List of KB numbers to be excluded from patching.
  final pulumi.Input<List<String>> kbNumbersToExcludes;
  /// List of KB numbers to be included for patching.
  final pulumi.Input<List<String>> kbNumbersToIncludes;

  /// Creates a new [GetConfigurationInstallPatchWindow].
  /// [classificationsToIncludes] List of Classification category of patches to be patched.
  /// [kbNumbersToExcludes] List of KB numbers to be excluded from patching.
  /// [kbNumbersToIncludes] List of KB numbers to be included for patching.
  GetConfigurationInstallPatchWindow({
    required this.classificationsToIncludes,
    required this.kbNumbersToExcludes,
    required this.kbNumbersToIncludes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationsToIncludes': classificationsToIncludes,
      'kbNumbersToExcludes': kbNumbersToExcludes,
      'kbNumbersToIncludes': kbNumbersToIncludes,
    };
  }

  factory GetConfigurationInstallPatchWindow.fromMap(Map<String, dynamic> map) {
    return GetConfigurationInstallPatchWindow(
      classificationsToIncludes: ((map['classificationsToIncludes'] as List).cast<String>()).input(),
      kbNumbersToExcludes: ((map['kbNumbersToExcludes'] as List).cast<String>()).input(),
      kbNumbersToIncludes: ((map['kbNumbersToIncludes'] as List).cast<String>()).input(),
    );
  }
}

