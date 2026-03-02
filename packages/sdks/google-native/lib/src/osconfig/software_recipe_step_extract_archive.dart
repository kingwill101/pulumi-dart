// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_recipe_step_extract_archive_type.dart';

/// Extracts an archive of the type specified in the specified directory.
class SoftwareRecipeStepExtractArchive {
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;
  /// Directory to extract archive to. Defaults to `/` on Linux or `C:\` on Windows.
  final pulumi.Input<String>? destination;
  /// The type of the archive to extract.
  final pulumi.Input<SoftwareRecipeStepExtractArchiveType> type;

  /// Creates a new [SoftwareRecipeStepExtractArchive].
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [destination] Directory to extract archive to. Defaults to `/` on Linux or `C:\` on Windows.
  /// [type] The type of the archive to extract.
  SoftwareRecipeStepExtractArchive({
    required this.artifactId,
    this.destination,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'destination': ?destination,
      'type': pulumi.Input.mapInputValue<SoftwareRecipeStepExtractArchiveType, String>(type, (value) => value.value),
    };
  }

  factory SoftwareRecipeStepExtractArchive.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepExtractArchive(
      artifactId: (map['artifactId'] as String).input(),
      destination: map['destination'] == null ? null : (map['destination'] as String).input(),
      type: (SoftwareRecipeStepExtractArchiveType.fromValue(map['type'] as String)).input(),
    );
  }
}

