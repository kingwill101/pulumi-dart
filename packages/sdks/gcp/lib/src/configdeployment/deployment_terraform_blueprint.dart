// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_terraform_blueprint_git_source.dart';
import 'deployment_terraform_blueprint_input_value.dart';

class DeploymentTerraformBlueprint {
  /// URI of a GCS object containing the zipped Terraform blueprint.
  final pulumi.Input<String?>? gcsSource;
  /// Public Git repository containing the blueprint.
  /// Structure is documented below.
  final pulumi.Input<DeploymentTerraformBlueprintGitSource?>? gitSource;
  /// Input variables for the Terraform blueprint.
  /// Structure is documented below.
  final pulumi.Input<List<DeploymentTerraformBlueprintInputValue>?>? inputValues;

  /// Creates a new [DeploymentTerraformBlueprint].
  /// [gcsSource] URI of a GCS object containing the zipped Terraform blueprint.
  /// [gitSource] Public Git repository containing the blueprint.
  /// [inputValues] Input variables for the Terraform blueprint.
  const DeploymentTerraformBlueprint({
    this.gcsSource,
    this.gitSource,
    this.inputValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsSource': ?gcsSource,
      'gitSource': ?pulumi.Input.mapOptionalInputValue<DeploymentTerraformBlueprintGitSource, Map<String, dynamic>>(gitSource, (value) => value.toMap()),
      'inputValues': ?pulumi.Input.mapOptionalInputValue<List<DeploymentTerraformBlueprintInputValue>, List<Map<String, dynamic>>>(inputValues, (value) => pulumi.Input.encodeList<DeploymentTerraformBlueprintInputValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeploymentTerraformBlueprint.fromMap(Map<String, dynamic> map) {
    return DeploymentTerraformBlueprint(
      gcsSource: (() { final guardedValue = map['gcsSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitSource: (() { final guardedValue = map['gitSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentTerraformBlueprintGitSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputValues: (() { final guardedValue = map['inputValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentTerraformBlueprintInputValue>(guardedValue, (value) => DeploymentTerraformBlueprintInputValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
