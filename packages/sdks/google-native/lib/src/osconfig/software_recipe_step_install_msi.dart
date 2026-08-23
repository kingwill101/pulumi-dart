// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Installs an MSI file.
class SoftwareRecipeStepInstallMsi {
  /// Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  final pulumi.Input<List<int>>? allowedExitCodes;
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;
  /// The flags to use when installing the MSI defaults to ["/i"] (i.e. the install flag).
  final pulumi.Input<List<String>>? flags;

  /// Creates a new [SoftwareRecipeStepInstallMsi].
  /// [allowedExitCodes] Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [flags] The flags to use when installing the MSI defaults to ["/i"] (i.e. the install flag).
  const SoftwareRecipeStepInstallMsi({
    this.allowedExitCodes,
    required this.artifactId,
    this.flags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExitCodes': ?allowedExitCodes,
      'artifactId': artifactId,
      'flags': ?flags,
    };
  }

  factory SoftwareRecipeStepInstallMsi.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepInstallMsi(
      allowedExitCodes: (() { final guardedValue = map['allowedExitCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      flags: (() { final guardedValue = map['flags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
