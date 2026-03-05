// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'builder_config_containeranalysis_v1alpha1.dart';
import 'metadata_containeranalysis_v1alpha1.dart';
import 'recipe_containeranalysis_v1alpha1.dart';

class InTotoProvenanceContaineranalysisV1alpha1 {
  /// required
  final pulumi.Input<BuilderConfigContaineranalysisV1alpha1>? builderConfig;
  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final pulumi.Input<List<String>>? materials;
  final pulumi.Input<MetadataContaineranalysisV1alpha1>? metadata;
  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final pulumi.Input<RecipeContaineranalysisV1alpha1>? recipe;

  /// Creates a new [InTotoProvenanceContaineranalysisV1alpha1].
  /// [builderConfig] required
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] Optional.
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  InTotoProvenanceContaineranalysisV1alpha1({
    this.builderConfig,
    this.materials,
    this.metadata,
    this.recipe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderConfig': ?pulumi.Input.mapOptionalInputValue<BuilderConfigContaineranalysisV1alpha1, Map<String, dynamic>>(builderConfig, (value) => value.toMap()),
      'materials': ?materials,
      'metadata': ?pulumi.Input.mapOptionalInputValue<MetadataContaineranalysisV1alpha1, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'recipe': ?pulumi.Input.mapOptionalInputValue<RecipeContaineranalysisV1alpha1, Map<String, dynamic>>(recipe, (value) => value.toMap()),
    };
  }

  factory InTotoProvenanceContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return InTotoProvenanceContaineranalysisV1alpha1(
      builderConfig: (() { final guardedValue = map['builderConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuilderConfigContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      materials: (() { final guardedValue = map['materials']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recipe: (() { final guardedValue = map['recipe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecipeContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

