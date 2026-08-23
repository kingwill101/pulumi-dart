// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentTerraformBlueprintInputValue {
  /// The value of the variable.
  final pulumi.Input<String> inputValue;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> variableName;

  /// Creates a new [DeploymentTerraformBlueprintInputValue].
  /// [inputValue] The value of the variable.
  /// [variableName] The identifier for this object. Format specified above.
  const DeploymentTerraformBlueprintInputValue({
    required this.inputValue,
    required this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputValue': inputValue,
      'variableName': variableName,
    };
  }

  factory DeploymentTerraformBlueprintInputValue.fromMap(Map<String, dynamic> map) {
    return DeploymentTerraformBlueprintInputValue(
      inputValue: pulumi.Input.fromValue(map['inputValue'] as String),
      variableName: pulumi.Input.fromValue(map['variableName'] as String),
    );
  }
}
