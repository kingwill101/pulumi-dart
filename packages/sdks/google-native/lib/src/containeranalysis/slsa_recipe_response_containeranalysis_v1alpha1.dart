// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Steps taken to build the artifact. For a TaskRun, typically each container corresponds to one step in the recipe.
class SlsaRecipeResponseContaineranalysisV1alpha1 {
  /// Collection of all external inputs that influenced the build on top of recipe.definedInMaterial and recipe.entryPoint. For example, if the recipe type were "make", then this might be the flags passed to make aside from the target, which is captured in recipe.entryPoint. Depending on the recipe Type, the structure may be different.
  final pulumi.Input<Map<String, String>> arguments;
  /// Index in materials containing the recipe steps that are not implied by recipe.type. For example, if the recipe type were "make", then this would point to the source containing the Makefile, not the make program itself. Set to -1 if the recipe doesn't come from a material, as zero is default unset value for int64.
  final pulumi.Input<String> definedInMaterial;
  /// String identifying the entry point into the build. This is often a path to a configuration file and/or a target label within that file. The syntax and meaning are defined by recipe.type. For example, if the recipe type were "make", then this would reference the directory in which to run make as well as which target to use.
  final pulumi.Input<String> entryPoint;
  /// Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only needed for reproducing the build but not evaluated as part of policy. Depending on the recipe Type, the structure may be different.
  final pulumi.Input<Map<String, String>> environment;
  /// URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint, recipe.arguments, recipe.environment, and materials.
  final pulumi.Input<String> type;

  /// Creates a new [SlsaRecipeResponseContaineranalysisV1alpha1].
  /// [arguments] Collection of all external inputs that influenced the build on top of recipe.definedInMaterial and recipe.entryPoint. For example, if the recipe type were "make", then this might be the flags passed to make aside from the target, which is captured in recipe.entryPoint. Depending on the recipe Type, the structure may be different.
  /// [definedInMaterial] Index in materials containing the recipe steps that are not implied by recipe.type. For example, if the recipe type were "make", then this would point to the source containing the Makefile, not the make program itself. Set to -1 if the recipe doesn't come from a material, as zero is default unset value for int64.
  /// [entryPoint] String identifying the entry point into the build. This is often a path to a configuration file and/or a target label within that file. The syntax and meaning are defined by recipe.type. For example, if the recipe type were "make", then this would reference the directory in which to run make as well as which target to use.
  /// [environment] Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only needed for reproducing the build but not evaluated as part of policy. Depending on the recipe Type, the structure may be different.
  /// [type] URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint, recipe.arguments, recipe.environment, and materials.
  const SlsaRecipeResponseContaineranalysisV1alpha1({
    required this.arguments,
    required this.definedInMaterial,
    required this.entryPoint,
    required this.environment,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': arguments,
      'definedInMaterial': definedInMaterial,
      'entryPoint': entryPoint,
      'environment': environment,
      'type': type,
    };
  }

  factory SlsaRecipeResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SlsaRecipeResponseContaineranalysisV1alpha1(
      arguments: pulumi.Input.fromValue((map['arguments'] as Map).cast<String, String>()),
      definedInMaterial: pulumi.Input.fromValue(map['definedInMaterial'] as String),
      entryPoint: pulumi.Input.fromValue(map['entryPoint'] as String),
      environment: pulumi.Input.fromValue((map['environment'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
