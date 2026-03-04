// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'builder_config.dart';
import 'metadata.dart';
import 'recipe.dart';

class InTotoProvenance {
  /// required
  final pulumi.Input<BuilderConfig>? builderConfig;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final pulumi.Input<List<String>>? materials;
  final pulumi.Input<Metadata>? metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final pulumi.Input<Recipe>? recipe;

  /// Creates a new [InTotoProvenance].
  /// [builderConfig] required
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] Optional.
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  InTotoProvenance({
    this.builderConfig,
    this.materials,
    this.metadata,
    this.recipe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BuilderConfig,
            Map<String, dynamic>
          >(builderConfig, (value) => value.toMap()),
      'materials': ?materials,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<Metadata, Map<String, dynamic>>(
            metadata,
            (value) => value.toMap(),
          ),
      'recipe':
          ?pulumi.Input.mapOptionalInputValue<Recipe, Map<String, dynamic>>(
            recipe,
            (value) => value.toMap(),
          ),
    };
  }

  factory InTotoProvenance.fromMap(Map<String, dynamic> map) {
    return InTotoProvenance(
      builderConfig: (() {
        final guardedValue = map['builderConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BuilderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      materials: (() {
        final guardedValue = map['materials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Metadata.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      recipe: (() {
        final guardedValue = map['recipe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Recipe.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
