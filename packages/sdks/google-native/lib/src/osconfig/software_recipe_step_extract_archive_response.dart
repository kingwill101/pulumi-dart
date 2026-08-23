// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extracts an archive of the type specified in the specified directory.
class SoftwareRecipeStepExtractArchiveResponse {
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;
  /// Directory to extract archive to. Defaults to `/` on Linux or `C:\` on Windows.
  final pulumi.Input<String> destination;
  /// The type of the archive to extract.
  final pulumi.Input<String> type;

  /// Creates a new [SoftwareRecipeStepExtractArchiveResponse].
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [destination] Directory to extract archive to. Defaults to `/` on Linux or `C:\` on Windows.
  /// [type] The type of the archive to extract.
  const SoftwareRecipeStepExtractArchiveResponse({
    required this.artifactId,
    required this.destination,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'destination': destination,
      'type': type,
    };
  }

  factory SoftwareRecipeStepExtractArchiveResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepExtractArchiveResponse(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
