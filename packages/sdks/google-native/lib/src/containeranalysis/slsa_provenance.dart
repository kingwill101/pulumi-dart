// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'material.dart';
import 'slsa_builder.dart';
import 'slsa_metadata.dart';
import 'slsa_recipe.dart';

class SlsaProvenance {
  /// required
  final pulumi.Input<SlsaBuilder>? builder;
  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final pulumi.Input<List<Material>>? materials;
  final pulumi.Input<SlsaMetadata>? metadata;
  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final pulumi.Input<SlsaRecipe>? recipe;

  /// Creates a new [SlsaProvenance].
  /// [builder] required
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] Optional.
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  SlsaProvenance({
    this.builder,
    this.materials,
    this.metadata,
    this.recipe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': ?pulumi.Input.mapOptionalInputValue<SlsaBuilder, Map<String, dynamic>>(builder, (value) => value.toMap()),
      'materials': ?pulumi.Input.mapOptionalInputValue<List<Material>, List<Map<String, dynamic>>>(materials, (value) => pulumi.Input.encodeList<Material, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?pulumi.Input.mapOptionalInputValue<SlsaMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'recipe': ?pulumi.Input.mapOptionalInputValue<SlsaRecipe, Map<String, dynamic>>(recipe, (value) => value.toMap()),
    };
  }

  factory SlsaProvenance.fromMap(Map<String, dynamic> map) {
    return SlsaProvenance(
      builder: map['builder'] == null ? null : (SlsaBuilder.fromMap((map['builder'] as Map).cast<String, dynamic>())).input(),
      materials: map['materials'] == null ? null : (pulumi.Input.decodeList<Material>(map['materials'], (value) => Material.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metadata: map['metadata'] == null ? null : (SlsaMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      recipe: map['recipe'] == null ? null : (SlsaRecipe.fromMap((map['recipe'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

