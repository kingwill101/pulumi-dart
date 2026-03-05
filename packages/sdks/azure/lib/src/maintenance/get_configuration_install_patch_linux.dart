// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationInstallPatchLinux {
  /// List of Classification category of patches to be patched.
  final pulumi.Input<List<String>> classificationsToIncludes;
  /// List of package names to be excluded from patching.
  final pulumi.Input<List<String>> packageNamesMaskToExcludes;
  /// List of package names to be included for patching.
  final pulumi.Input<List<String>> packageNamesMaskToIncludes;

  /// Creates a new [GetConfigurationInstallPatchLinux].
  /// [classificationsToIncludes] List of Classification category of patches to be patched.
  /// [packageNamesMaskToExcludes] List of package names to be excluded from patching.
  /// [packageNamesMaskToIncludes] List of package names to be included for patching.
  GetConfigurationInstallPatchLinux({
    required this.classificationsToIncludes,
    required this.packageNamesMaskToExcludes,
    required this.packageNamesMaskToIncludes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationsToIncludes': classificationsToIncludes,
      'packageNamesMaskToExcludes': packageNamesMaskToExcludes,
      'packageNamesMaskToIncludes': packageNamesMaskToIncludes,
    };
  }

  factory GetConfigurationInstallPatchLinux.fromMap(Map<String, dynamic> map) {
    return GetConfigurationInstallPatchLinux(
      classificationsToIncludes: pulumi.Input.fromValue((map['classificationsToIncludes'] as List).cast<String>()),
      packageNamesMaskToExcludes: pulumi.Input.fromValue((map['packageNamesMaskToExcludes'] as List).cast<String>()),
      packageNamesMaskToIncludes: pulumi.Input.fromValue((map['packageNamesMaskToIncludes'] as List).cast<String>()),
    );
  }
}

