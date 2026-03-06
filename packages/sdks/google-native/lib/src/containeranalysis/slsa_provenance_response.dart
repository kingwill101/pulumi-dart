// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'material_response.dart';
import 'slsa_metadata_response.dart';
import 'slsa_recipe_response.dart';

class SlsaProvenanceResponse {
  /// required
  final pulumi.Input<Map<String, dynamic>> builder;
  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final pulumi.Input<List<MaterialResponse>> materials;
  final pulumi.Input<SlsaMetadataResponse> metadata;
  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final pulumi.Input<SlsaRecipeResponse> recipe;

  /// Creates a new [SlsaProvenanceResponse].
  /// [builder] required
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] Required.
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  const SlsaProvenanceResponse({
    required this.builder,
    required this.materials,
    required this.metadata,
    required this.recipe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': builder,
      'materials': pulumi.Input.mapInputValue<List<MaterialResponse>, List<Map<String, dynamic>>>(materials, (value) => pulumi.Input.encodeList<MaterialResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': pulumi.Input.mapInputValue<SlsaMetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'recipe': pulumi.Input.mapInputValue<SlsaRecipeResponse, Map<String, dynamic>>(recipe, (value) => value.toMap()),
    };
  }

  factory SlsaProvenanceResponse.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceResponse(
      builder: pulumi.Input.fromValue((map['builder']! as Map).cast<String, dynamic>()),
      materials: pulumi.Input.fromValue(pulumi.Input.decodeList<MaterialResponse>(map['materials']!, (value) => MaterialResponse.fromMap((value as Map).cast<String, dynamic>()))),
      metadata: pulumi.Input.fromValue(SlsaMetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      recipe: pulumi.Input.fromValue(SlsaRecipeResponse.fromMap((map['recipe']! as Map).cast<String, dynamic>())),
    );
  }
}

