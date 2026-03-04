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
  SlsaProvenance({this.builder, this.materials, this.metadata, this.recipe});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder':
          ?pulumi.Input.mapOptionalInputValue<
            SlsaBuilder,
            Map<String, dynamic>
          >(builder, (value) => value.toMap()),
      'materials':
          ?pulumi.Input.mapOptionalInputValue<
            List<Material>,
            List<Map<String, dynamic>>
          >(
            materials,
            (value) => pulumi.Input.encodeList<Material, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            SlsaMetadata,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
      'recipe':
          ?pulumi.Input.mapOptionalInputValue<SlsaRecipe, Map<String, dynamic>>(
            recipe,
            (value) => value.toMap(),
          ),
    };
  }

  factory SlsaProvenance.fromMap(Map<String, dynamic> map) {
    return SlsaProvenance(
      builder: (() {
        final guardedValue = map['builder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SlsaBuilder.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      materials: (() {
        final guardedValue = map['materials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Material>(
            guardedValue,
            (value) => Material.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SlsaMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      recipe: (() {
        final guardedValue = map['recipe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SlsaRecipe.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
