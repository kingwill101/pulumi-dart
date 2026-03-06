// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesRecipeUpdateStepRpmInstallation {
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;

  /// Creates a new [GuestPoliciesRecipeUpdateStepRpmInstallation].
  /// [artifactId] The id of the relevant artifact in the recipe.
  const GuestPoliciesRecipeUpdateStepRpmInstallation({
    required this.artifactId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
    };
  }

  factory GuestPoliciesRecipeUpdateStepRpmInstallation.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeUpdateStepRpmInstallation(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
    );
  }
}

