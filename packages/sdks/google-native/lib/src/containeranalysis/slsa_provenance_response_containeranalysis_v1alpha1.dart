// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'material_response_containeranalysis_v1alpha1.dart';
import 'slsa_metadata_response_containeranalysis_v1alpha1.dart';
import 'slsa_recipe_response_containeranalysis_v1alpha1.dart';

/// SlsaProvenance is the slsa provenance as defined by the slsa spec.
class SlsaProvenanceResponseContaineranalysisV1alpha1 {
  /// builder is the builder of this provenance
  final pulumi.Input<Map<String, dynamic>> builder;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final pulumi.Input<List<MaterialResponseContaineranalysisV1alpha1>> materials;

  /// metadata is the metadata of the provenance
  final pulumi.Input<SlsaMetadataResponseContaineranalysisV1alpha1> metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible).
  final pulumi.Input<SlsaRecipeResponseContaineranalysisV1alpha1> recipe;

  /// Creates a new [SlsaProvenanceResponseContaineranalysisV1alpha1].
  /// [builder] builder is the builder of this provenance
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] metadata is the metadata of the provenance
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible).
  SlsaProvenanceResponseContaineranalysisV1alpha1({
    required this.builder,
    required this.materials,
    required this.metadata,
    required this.recipe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': builder,
      'materials':
          pulumi.Input.mapInputValue<
            List<MaterialResponseContaineranalysisV1alpha1>,
            List<Map<String, dynamic>>
          >(
            materials,
            (value) =>
                pulumi.Input.encodeList<
                  MaterialResponseContaineranalysisV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metadata':
          pulumi.Input.mapInputValue<
            SlsaMetadataResponseContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
      'recipe':
          pulumi.Input.mapInputValue<
            SlsaRecipeResponseContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(recipe, (value) => value.toMap()),
    };
  }

  factory SlsaProvenanceResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SlsaProvenanceResponseContaineranalysisV1alpha1(
      builder: pulumi.Input.fromValue(
        (map['builder']! as Map).cast<String, dynamic>(),
      ),
      materials: pulumi.Input.fromValue(
        pulumi.Input.decodeList<MaterialResponseContaineranalysisV1alpha1>(
          map['materials']!,
          (value) => MaterialResponseContaineranalysisV1alpha1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      metadata: pulumi.Input.fromValue(
        SlsaMetadataResponseContaineranalysisV1alpha1.fromMap(
          (map['metadata']! as Map).cast<String, dynamic>(),
        ),
      ),
      recipe: pulumi.Input.fromValue(
        SlsaRecipeResponseContaineranalysisV1alpha1.fromMap(
          (map['recipe']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
