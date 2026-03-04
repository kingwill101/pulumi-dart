// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Installs a deb via dpkg.
class SoftwareRecipeStepInstallDpkg {
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;

  /// Creates a new [SoftwareRecipeStepInstallDpkg].
  /// [artifactId] The id of the relevant artifact in the recipe.
  SoftwareRecipeStepInstallDpkg({required this.artifactId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'artifactId': artifactId};
  }

  factory SoftwareRecipeStepInstallDpkg.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepInstallDpkg(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
    );
  }
}
