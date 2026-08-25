// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_policies_recipe_artifact.dart';
import 'guest_policies_recipe_install_step.dart';
import 'guest_policies_recipe_update_step.dart';

class GuestPoliciesRecipe {
  /// Resources available to be used in the steps in the recipe.
  /// Structure is documented below.
  final pulumi.Input<List<GuestPoliciesRecipeArtifact>?>? artifacts;
  /// Default is INSTALLED. The desired state the agent should maintain for this recipe.
  /// INSTALLED: The software recipe is installed on the instance but won't be updated to new versions.
  /// INSTALLED_KEEP_UPDATED: The software recipe is installed on the instance. The recipe is updated to a higher version,
  /// if a higher version of the recipe is assigned to this instance.
  /// REMOVE: Remove is unsupported for software recipes and attempts to create or update a recipe to the REMOVE state is rejected.
  /// Default value is `INSTALLED`.
  /// Possible values are: `INSTALLED`, `UPDATED`, `REMOVED`.
  final pulumi.Input<String?>? desiredState;
  /// Actions to be taken for installing this recipe. On failure it stops executing steps and does not attempt another installation.
  /// Any steps taken (including partially completed steps) are not rolled back.
  /// Structure is documented below.
  final pulumi.Input<List<GuestPoliciesRecipeInstallStep>?>? installSteps;
  /// Unique identifier for the recipe. Only one recipe with a given name is installed on an instance.
  /// Names are also used to identify resources which helps to determine whether guest policies have conflicts.
  /// This means that requests to create multiple recipes with the same name and version are rejected since they
  /// could potentially have conflicting assignments.
  final pulumi.Input<String> name;
  /// Actions to be taken for updating this recipe. On failure it stops executing steps and does not attempt another update for this recipe.
  /// Any steps taken (including partially completed steps) are not rolled back.
  /// Structure is documented below.
  final pulumi.Input<List<GuestPoliciesRecipeUpdateStep>?>? updateSteps;
  /// The version of this software recipe. Version can be up to 4 period separated numbers (e.g. 12.34.56.78).
  final pulumi.Input<String?>? version;

  /// Creates a new [GuestPoliciesRecipe].
  /// [artifacts] Resources available to be used in the steps in the recipe.
  /// [desiredState] Default is INSTALLED. The desired state the agent should maintain for this recipe.
  /// [installSteps] Actions to be taken for installing this recipe. On failure it stops executing steps and does not attempt another installation.
  /// [name] Unique identifier for the recipe. Only one recipe with a given name is installed on an instance.
  /// [updateSteps] Actions to be taken for updating this recipe. On failure it stops executing steps and does not attempt another update for this recipe.
  /// [version] The version of this software recipe. Version can be up to 4 period separated numbers (e.g. 12.34.56.78).
  const GuestPoliciesRecipe({
    this.artifacts,
    this.desiredState,
    this.installSteps,
    required this.name,
    this.updateSteps,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifacts': ?pulumi.Input.mapOptionalInputValue<List<GuestPoliciesRecipeArtifact>, List<Map<String, dynamic>>>(artifacts, (value) => pulumi.Input.encodeList<GuestPoliciesRecipeArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'desiredState': ?desiredState,
      'installSteps': ?pulumi.Input.mapOptionalInputValue<List<GuestPoliciesRecipeInstallStep>, List<Map<String, dynamic>>>(installSteps, (value) => pulumi.Input.encodeList<GuestPoliciesRecipeInstallStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'updateSteps': ?pulumi.Input.mapOptionalInputValue<List<GuestPoliciesRecipeUpdateStep>, List<Map<String, dynamic>>>(updateSteps, (value) => pulumi.Input.encodeList<GuestPoliciesRecipeUpdateStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory GuestPoliciesRecipe.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipe(
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuestPoliciesRecipeArtifact>(guardedValue, (value) => GuestPoliciesRecipeArtifact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      installSteps: (() { final guardedValue = map['installSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuestPoliciesRecipeInstallStep>(guardedValue, (value) => GuestPoliciesRecipeInstallStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      updateSteps: (() { final guardedValue = map['updateSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuestPoliciesRecipeUpdateStep>(guardedValue, (value) => GuestPoliciesRecipeUpdateStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
