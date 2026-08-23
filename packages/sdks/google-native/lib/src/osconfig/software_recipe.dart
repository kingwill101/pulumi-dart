// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_recipe_artifact.dart';
import 'software_recipe_desired_state.dart';
import 'software_recipe_step.dart';

/// A software recipe is a set of instructions for installing and configuring a piece of software. It consists of a set of artifacts that are downloaded, and a set of steps that install, configure, and/or update the software. Recipes support installing and updating software from artifacts in the following formats: Zip archive, Tar archive, Windows MSI, Debian package, and RPM package. Additionally, recipes support executing a script (either defined in a file or directly in this api) in bash, sh, cmd, and powershell. Updating a software recipe If a recipe is assigned to an instance and there is a recipe with the same name but a lower version already installed and the assigned state of the recipe is `UPDATED`, then the recipe is updated to the new version. Script Working Directories Each script or execution step is run in its own temporary directory which is deleted after completing the step.
class SoftwareRecipe {
  /// Resources available to be used in the steps in the recipe.
  final pulumi.Input<List<SoftwareRecipeArtifact>>? artifacts;
  /// Default is INSTALLED. The desired state the agent should maintain for this recipe. INSTALLED: The software recipe is installed on the instance but won't be updated to new versions. UPDATED: The software recipe is installed on the instance. The recipe is updated to a higher version, if a higher version of the recipe is assigned to this instance. REMOVE: Remove is unsupported for software recipes and attempts to create or update a recipe to the REMOVE state is rejected.
  final pulumi.Input<SoftwareRecipeDesiredState>? desiredState;
  /// Actions to be taken for installing this recipe. On failure it stops executing steps and does not attempt another installation. Any steps taken (including partially completed steps) are not rolled back.
  final pulumi.Input<List<SoftwareRecipeStep>>? installSteps;
  /// Unique identifier for the recipe. Only one recipe with a given name is installed on an instance. Names are also used to identify resources which helps to determine whether guest policies have conflicts. This means that requests to create multiple recipes with the same name and version are rejected since they could potentially have conflicting assignments.
  final pulumi.Input<String> name;
  /// Actions to be taken for updating this recipe. On failure it stops executing steps and does not attempt another update for this recipe. Any steps taken (including partially completed steps) are not rolled back.
  final pulumi.Input<List<SoftwareRecipeStep>>? updateSteps;
  /// The version of this software recipe. Version can be up to 4 period separated numbers (e.g. 12.34.56.78).
  final pulumi.Input<String>? version;

  /// Creates a new [SoftwareRecipe].
  /// [artifacts] Resources available to be used in the steps in the recipe.
  /// [desiredState] Default is INSTALLED. The desired state the agent should maintain for this recipe. INSTALLED: The software recipe is installed on the instance but won't be updated to new versions. UPDATED: The software recipe is installed on the instance. The recipe is updated to a higher version, if a higher version of the recipe is assigned to this instance. REMOVE: Remove is unsupported for software recipes and attempts to create or update a recipe to the REMOVE state is rejected.
  /// [installSteps] Actions to be taken for installing this recipe. On failure it stops executing steps and does not attempt another installation. Any steps taken (including partially completed steps) are not rolled back.
  /// [name] Unique identifier for the recipe. Only one recipe with a given name is installed on an instance. Names are also used to identify resources which helps to determine whether guest policies have conflicts. This means that requests to create multiple recipes with the same name and version are rejected since they could potentially have conflicting assignments.
  /// [updateSteps] Actions to be taken for updating this recipe. On failure it stops executing steps and does not attempt another update for this recipe. Any steps taken (including partially completed steps) are not rolled back.
  /// [version] The version of this software recipe. Version can be up to 4 period separated numbers (e.g. 12.34.56.78).
  const SoftwareRecipe({
    this.artifacts,
    this.desiredState,
    this.installSteps,
    required this.name,
    this.updateSteps,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifacts': ?pulumi.Input.mapOptionalInputValue<List<SoftwareRecipeArtifact>, List<Map<String, dynamic>>>(artifacts, (value) => pulumi.Input.encodeList<SoftwareRecipeArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'desiredState': ?pulumi.Input.mapOptionalInputValue<SoftwareRecipeDesiredState, String>(desiredState, (value) => value.wireValue),
      'installSteps': ?pulumi.Input.mapOptionalInputValue<List<SoftwareRecipeStep>, List<Map<String, dynamic>>>(installSteps, (value) => pulumi.Input.encodeList<SoftwareRecipeStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'updateSteps': ?pulumi.Input.mapOptionalInputValue<List<SoftwareRecipeStep>, List<Map<String, dynamic>>>(updateSteps, (value) => pulumi.Input.encodeList<SoftwareRecipeStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory SoftwareRecipe.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipe(
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SoftwareRecipeArtifact>(guardedValue, (value) => SoftwareRecipeArtifact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoftwareRecipeDesiredState.fromValue(guardedValue as String)); })(),
      installSteps: (() { final guardedValue = map['installSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SoftwareRecipeStep>(guardedValue, (value) => SoftwareRecipeStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      updateSteps: (() { final guardedValue = map['updateSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SoftwareRecipeStep>(guardedValue, (value) => SoftwareRecipeStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
