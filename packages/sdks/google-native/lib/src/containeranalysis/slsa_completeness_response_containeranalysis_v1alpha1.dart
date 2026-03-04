// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that the builder claims certain fields in this message to be complete.
class SlsaCompletenessResponseContaineranalysisV1alpha1 {
  /// If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  final pulumi.Input<bool> arguments;

  /// If true, the builder claims that recipe.environment is claimed to be complete.
  final pulumi.Input<bool> environment;

  /// If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  final pulumi.Input<bool> materials;

  /// Creates a new [SlsaCompletenessResponseContaineranalysisV1alpha1].
  /// [arguments] If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  /// [environment] If true, the builder claims that recipe.environment is claimed to be complete.
  /// [materials] If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  SlsaCompletenessResponseContaineranalysisV1alpha1({
    required this.arguments,
    required this.environment,
    required this.materials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': arguments,
      'environment': environment,
      'materials': materials,
    };
  }

  factory SlsaCompletenessResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SlsaCompletenessResponseContaineranalysisV1alpha1(
      arguments: pulumi.Input.fromValue(map['arguments'] as bool),
      environment: pulumi.Input.fromValue(map['environment'] as bool),
      materials: pulumi.Input.fromValue(map['materials'] as bool),
    );
  }
}
