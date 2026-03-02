// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that the builder claims certain fields in this message to be complete.
class SlsaCompleteness {
  /// If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  final pulumi.Input<bool>? arguments;
  /// If true, the builder claims that recipe.environment is claimed to be complete.
  final pulumi.Input<bool>? environment;
  /// If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  final pulumi.Input<bool>? materials;

  /// Creates a new [SlsaCompleteness].
  /// [arguments] If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.
  /// [environment] If true, the builder claims that recipe.environment is claimed to be complete.
  /// [materials] If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called "hermetic".
  SlsaCompleteness({
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

  factory SlsaCompleteness.fromMap(Map<String, dynamic> map) {
    return SlsaCompleteness(
      arguments: map['arguments'] == null ? null : (map['arguments']! as bool).input(),
      environment: map['environment'] == null ? null : (map['environment']! as bool).input(),
      materials: map['materials'] == null ? null : (map['materials']! as bool).input(),
    );
  }
}

