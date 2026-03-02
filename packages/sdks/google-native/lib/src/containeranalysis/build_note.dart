// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.
class BuildNote {
  /// Immutable. Version of the builder which produced this build.
  final pulumi.Input<String> builderVersion;

  /// Creates a new [BuildNote].
  /// [builderVersion] Immutable. Version of the builder which produced this build.
  BuildNote({
    required this.builderVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderVersion': builderVersion,
    };
  }

  factory BuildNote.fromMap(Map<String, dynamic> map) {
    return BuildNote(
      builderVersion: (map['builderVersion'] as String).input(),
    );
  }
}

