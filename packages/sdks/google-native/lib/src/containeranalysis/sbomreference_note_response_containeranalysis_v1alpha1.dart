// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The note representing an SBOM reference.
class SBOMReferenceNoteResponseContaineranalysisV1alpha1 {
  /// The format that SBOM takes. E.g. may be spdx, cyclonedx, etc...
  final pulumi.Input<String> format;
  /// The version of the format that the SBOM takes. E.g. if the format is spdx, the version may be 2.3.
  final pulumi.Input<String> version;

  /// Creates a new [SBOMReferenceNoteResponseContaineranalysisV1alpha1].
  /// [format] The format that SBOM takes. E.g. may be spdx, cyclonedx, etc...
  /// [version] The version of the format that the SBOM takes. E.g. if the format is spdx, the version may be 2.3.
  SBOMReferenceNoteResponseContaineranalysisV1alpha1({
    required this.format,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'version': version,
    };
  }

  factory SBOMReferenceNoteResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceNoteResponseContaineranalysisV1alpha1(
      format: pulumi.Input.fromValue(map['format'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

