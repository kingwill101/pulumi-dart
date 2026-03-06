// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_response_containeranalysis_v1alpha1.dart';
import 'recipe_response_containeranalysis_v1alpha1.dart';

class InTotoProvenanceResponseContaineranalysisV1alpha1 {
  /// required
  final pulumi.Input<Map<String, dynamic>> builderConfig;
  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final pulumi.Input<List<String>> materials;
  final pulumi.Input<MetadataResponseContaineranalysisV1alpha1> metadata;
  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final pulumi.Input<RecipeResponseContaineranalysisV1alpha1> recipe;

  /// Creates a new [InTotoProvenanceResponseContaineranalysisV1alpha1].
  /// [builderConfig] required
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] Required.
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  const InTotoProvenanceResponseContaineranalysisV1alpha1({
    required this.builderConfig,
    required this.materials,
    required this.metadata,
    required this.recipe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderConfig': builderConfig,
      'materials': materials,
      'metadata': pulumi.Input.mapInputValue<MetadataResponseContaineranalysisV1alpha1, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'recipe': pulumi.Input.mapInputValue<RecipeResponseContaineranalysisV1alpha1, Map<String, dynamic>>(recipe, (value) => value.toMap()),
    };
  }

  factory InTotoProvenanceResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return InTotoProvenanceResponseContaineranalysisV1alpha1(
      builderConfig: pulumi.Input.fromValue((map['builderConfig']! as Map).cast<String, dynamic>()),
      materials: pulumi.Input.fromValue((map['materials'] as List).cast<String>()),
      metadata: pulumi.Input.fromValue(MetadataResponseContaineranalysisV1alpha1.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      recipe: pulumi.Input.fromValue(RecipeResponseContaineranalysisV1alpha1.fromMap((map['recipe']! as Map).cast<String, dynamic>())),
    );
  }
}

