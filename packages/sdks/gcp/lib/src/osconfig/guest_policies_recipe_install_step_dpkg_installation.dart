// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesRecipeInstallStepDpkgInstallation {
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;

  /// Creates a new [GuestPoliciesRecipeInstallStepDpkgInstallation].
  /// [artifactId] The id of the relevant artifact in the recipe.
  GuestPoliciesRecipeInstallStepDpkgInstallation({required this.artifactId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'artifactId': artifactId};
  }

  factory GuestPoliciesRecipeInstallStepDpkgInstallation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GuestPoliciesRecipeInstallStepDpkgInstallation(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
    );
  }
}
