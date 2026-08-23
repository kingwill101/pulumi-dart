// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbomstatus_sbom_state_containeranalysis_v1beta1.dart';

/// The status of an SBOM generation.
class SBOMStatusContaineranalysisV1beta1 {
  /// If there was an error generating an SBOM, this will indicate what that error was.
  final pulumi.Input<String>? error;
  /// The progress of the SBOM generation.
  final pulumi.Input<SBOMStatusSbomStateContaineranalysisV1beta1>? sbomState;

  /// Creates a new [SBOMStatusContaineranalysisV1beta1].
  /// [error] If there was an error generating an SBOM, this will indicate what that error was.
  /// [sbomState] The progress of the SBOM generation.
  const SBOMStatusContaineranalysisV1beta1({
    this.error,
    this.sbomState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error,
      'sbomState': ?pulumi.Input.mapOptionalInputValue<SBOMStatusSbomStateContaineranalysisV1beta1, String>(sbomState, (value) => value.wireValue),
    };
  }

  factory SBOMStatusContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SBOMStatusContaineranalysisV1beta1(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sbomState: (() { final guardedValue = map['sbomState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SBOMStatusSbomStateContaineranalysisV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}
