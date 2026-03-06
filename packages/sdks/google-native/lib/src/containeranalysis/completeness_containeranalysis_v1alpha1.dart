// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that the builder claims certain fields in this message to be complete.
class CompletenessContaineranalysisV1alpha1 {
  /// If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  final pulumi.Input<bool>? arguments;
  /// If true, the builder claims that recipe.environment is claimed to be complete.
  final pulumi.Input<bool>? environment;
  /// If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  final pulumi.Input<bool>? materials;

  /// Creates a new [CompletenessContaineranalysisV1alpha1].
  /// [arguments] If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  /// [environment] If true, the builder claims that recipe.environment is claimed to be complete.
  /// [materials] If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  const CompletenessContaineranalysisV1alpha1({
    this.arguments,
    this.environment,
    this.materials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'environment': ?environment,
      'materials': ?materials,
    };
  }

  factory CompletenessContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return CompletenessContaineranalysisV1alpha1(
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      materials: (() { final guardedValue = map['materials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

