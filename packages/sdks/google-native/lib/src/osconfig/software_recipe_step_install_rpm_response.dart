// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Installs an rpm file via the rpm utility.
class SoftwareRecipeStepInstallRpmResponse {
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;

  /// Creates a new [SoftwareRecipeStepInstallRpmResponse].
  /// [artifactId] The id of the relevant artifact in the recipe.
  const SoftwareRecipeStepInstallRpmResponse({
    required this.artifactId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
    };
  }

  factory SoftwareRecipeStepInstallRpmResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepInstallRpmResponse(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
    );
  }
}

