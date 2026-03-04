// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Installs a deb via dpkg.
class SoftwareRecipeStepInstallDpkgResponse {
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;

  /// Creates a new [SoftwareRecipeStepInstallDpkgResponse].
  /// [artifactId] The id of the relevant artifact in the recipe.
  SoftwareRecipeStepInstallDpkgResponse({required this.artifactId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'artifactId': artifactId};
  }

  factory SoftwareRecipeStepInstallDpkgResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SoftwareRecipeStepInstallDpkgResponse(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
    );
  }
}
