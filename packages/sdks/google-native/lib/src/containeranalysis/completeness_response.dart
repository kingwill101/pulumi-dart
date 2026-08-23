// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that the builder claims certain fields in this message to be complete.
class CompletenessResponse {
  /// If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  final pulumi.Input<bool> arguments;
  /// If true, the builder claims that recipe.environment is claimed to be complete.
  final pulumi.Input<bool> environment;
  /// If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  final pulumi.Input<bool> materials;

  /// Creates a new [CompletenessResponse].
  /// [arguments] If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  /// [environment] If true, the builder claims that recipe.environment is claimed to be complete.
  /// [materials] If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  const CompletenessResponse({
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

  factory CompletenessResponse.fromMap(Map<String, dynamic> map) {
    return CompletenessResponse(
      arguments: pulumi.Input.fromValue(map['arguments'] as bool),
      environment: pulumi.Input.fromValue(map['environment'] as bool),
      materials: pulumi.Input.fromValue(map['materials'] as bool),
    );
  }
}
