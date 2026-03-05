// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of an SBOM generation.
class SBOMStatusResponse {
  /// If there was an error generating an SBOM, this will indicate what that error was.
  final pulumi.Input<String> error;
  /// The progress of the SBOM generation.
  final pulumi.Input<String> sbomState;

  /// Creates a new [SBOMStatusResponse].
  /// [error] If there was an error generating an SBOM, this will indicate what that error was.
  /// [sbomState] The progress of the SBOM generation.
  SBOMStatusResponse({
    required this.error,
    required this.sbomState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error,
      'sbomState': sbomState,
    };
  }

  factory SBOMStatusResponse.fromMap(Map<String, dynamic> map) {
    return SBOMStatusResponse(
      error: pulumi.Input.fromValue(map['error'] as String),
      sbomState: pulumi.Input.fromValue(map['sbomState'] as String),
    );
  }
}

