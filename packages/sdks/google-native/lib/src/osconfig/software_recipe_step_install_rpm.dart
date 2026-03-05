// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Installs an rpm file via the rpm utility.
class SoftwareRecipeStepInstallRpm {
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;

  /// Creates a new [SoftwareRecipeStepInstallRpm].
  /// [artifactId] The id of the relevant artifact in the recipe.
  SoftwareRecipeStepInstallRpm({
    required this.artifactId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
    };
  }

  factory SoftwareRecipeStepInstallRpm.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepInstallRpm(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
    );
  }
}

