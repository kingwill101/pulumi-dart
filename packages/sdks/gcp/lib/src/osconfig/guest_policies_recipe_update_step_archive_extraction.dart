// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesRecipeUpdateStepArchiveExtraction {
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;
  /// Directory to extract archive to. Defaults to / on Linux or C:\ on Windows.
  final pulumi.Input<String>? destination;
  /// The type of the archive to extract.
  /// Possible values are: `TAR`, `TAR_GZIP`, `TAR_BZIP`, `TAR_LZMA`, `TAR_XZ`, `ZIP`.
  final pulumi.Input<String> type;

  /// Creates a new [GuestPoliciesRecipeUpdateStepArchiveExtraction].
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [destination] Directory to extract archive to. Defaults to / on Linux or C:\ on Windows.
  /// [type] The type of the archive to extract.
  GuestPoliciesRecipeUpdateStepArchiveExtraction({
    required this.artifactId,
    this.destination,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'destination': ?destination,
      'type': type,
    };
  }

  factory GuestPoliciesRecipeUpdateStepArchiveExtraction.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeUpdateStepArchiveExtraction(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

