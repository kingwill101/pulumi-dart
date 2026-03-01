// ignore_for_file: unused_element, unnecessary_cast


/// The status of an SBOM generation.
class SBOMStatusResponse {
  /// If there was an error generating an SBOM, this will indicate what that error was.
  final String error;
  /// The progress of the SBOM generation.
  final String sbomState;

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
      error: map['error'] as String,
      sbomState: map['sbomState'] as String,
    );
  }
}

