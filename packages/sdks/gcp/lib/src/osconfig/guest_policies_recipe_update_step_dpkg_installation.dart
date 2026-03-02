// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesRecipeUpdateStepDpkgInstallation {
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;

  /// Creates a new [GuestPoliciesRecipeUpdateStepDpkgInstallation].
  /// [artifactId] The id of the relevant artifact in the recipe.
  GuestPoliciesRecipeUpdateStepDpkgInstallation({
    required this.artifactId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
    };
  }

  factory GuestPoliciesRecipeUpdateStepDpkgInstallation.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeUpdateStepDpkgInstallation(
      artifactId: (map['artifactId'] as String).input(),
    );
  }
}

