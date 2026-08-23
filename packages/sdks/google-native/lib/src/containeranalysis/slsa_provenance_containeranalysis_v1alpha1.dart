// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'material_containeranalysis_v1alpha1.dart';
import 'slsa_builder_containeranalysis_v1alpha1.dart';
import 'slsa_metadata_containeranalysis_v1alpha1.dart';
import 'slsa_recipe_containeranalysis_v1alpha1.dart';

/// SlsaProvenance is the slsa provenance as defined by the slsa spec.
class SlsaProvenanceContaineranalysisV1alpha1 {
  /// builder is the builder of this provenance
  final pulumi.Input<SlsaBuilderContaineranalysisV1alpha1>? builder;
  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final pulumi.Input<List<MaterialContaineranalysisV1alpha1>>? materials;
  /// metadata is the metadata of the provenance
  final pulumi.Input<SlsaMetadataContaineranalysisV1alpha1>? metadata;
  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible).
  final pulumi.Input<SlsaRecipeContaineranalysisV1alpha1>? recipe;

  /// Creates a new [SlsaProvenanceContaineranalysisV1alpha1].
  /// [builder] builder is the builder of this provenance
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] metadata is the metadata of the provenance
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible).
  const SlsaProvenanceContaineranalysisV1alpha1({
    this.builder,
    this.materials,
    this.metadata,
    this.recipe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': ?pulumi.Input.mapOptionalInputValue<SlsaBuilderContaineranalysisV1alpha1, Map<String, dynamic>>(builder, (value) => value.toMap()),
      'materials': ?pulumi.Input.mapOptionalInputValue<List<MaterialContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(materials, (value) => pulumi.Input.encodeList<MaterialContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?pulumi.Input.mapOptionalInputValue<SlsaMetadataContaineranalysisV1alpha1, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'recipe': ?pulumi.Input.mapOptionalInputValue<SlsaRecipeContaineranalysisV1alpha1, Map<String, dynamic>>(recipe, (value) => value.toMap()),
    };
  }

  factory SlsaProvenanceContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceContaineranalysisV1alpha1(
      builder: (() { final guardedValue = map['builder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlsaBuilderContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      materials: (() { final guardedValue = map['materials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MaterialContaineranalysisV1alpha1>(guardedValue, (value) => MaterialContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlsaMetadataContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recipe: (() { final guardedValue = map['recipe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlsaRecipeContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
