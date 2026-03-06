// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Installs an MSI file.
class SoftwareRecipeStepInstallMsiResponse {
  /// Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  final pulumi.Input<List<int>> allowedExitCodes;
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;
  /// The flags to use when installing the MSI defaults to ["/i"] (i.e. the install flag).
  final pulumi.Input<List<String>> flags;

  /// Creates a new [SoftwareRecipeStepInstallMsiResponse].
  /// [allowedExitCodes] Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [flags] The flags to use when installing the MSI defaults to ["/i"] (i.e. the install flag).
  const SoftwareRecipeStepInstallMsiResponse({
    required this.allowedExitCodes,
    required this.artifactId,
    required this.flags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExitCodes': allowedExitCodes,
      'artifactId': artifactId,
      'flags': flags,
    };
  }

  factory SoftwareRecipeStepInstallMsiResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepInstallMsiResponse(
      allowedExitCodes: pulumi.Input.fromValue((map['allowedExitCodes'] as List).cast<int>()),
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      flags: pulumi.Input.fromValue((map['flags'] as List).cast<String>()),
    );
  }
}

