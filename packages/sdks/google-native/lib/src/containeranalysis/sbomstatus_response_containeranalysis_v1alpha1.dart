// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of an SBOM generation.
class SBOMStatusResponseContaineranalysisV1alpha1 {
  /// If there was an error generating an SBOM, this will indicate what that error was.
  final pulumi.Input<String> error;
  /// The progress of the SBOM generation.
  final pulumi.Input<String> sbomState;

  /// Creates a new [SBOMStatusResponseContaineranalysisV1alpha1].
  /// [error] If there was an error generating an SBOM, this will indicate what that error was.
  /// [sbomState] The progress of the SBOM generation.
  const SBOMStatusResponseContaineranalysisV1alpha1({
    required this.error,
    required this.sbomState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error,
      'sbomState': sbomState,
    };
  }

  factory SBOMStatusResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SBOMStatusResponseContaineranalysisV1alpha1(
      error: pulumi.Input.fromValue(map['error'] as String),
      sbomState: pulumi.Input.fromValue(map['sbomState'] as String),
    );
  }
}

