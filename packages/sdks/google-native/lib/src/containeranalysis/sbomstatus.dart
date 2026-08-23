// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbomstatus_sbom_state.dart';

/// The status of an SBOM generation.
class SBOMStatus {
  /// If there was an error generating an SBOM, this will indicate what that error was.
  final pulumi.Input<String>? error;
  /// The progress of the SBOM generation.
  final pulumi.Input<SBOMStatusSbomState>? sbomState;

  /// Creates a new [SBOMStatus].
  /// [error] If there was an error generating an SBOM, this will indicate what that error was.
  /// [sbomState] The progress of the SBOM generation.
  const SBOMStatus({
    this.error,
    this.sbomState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error,
      'sbomState': ?pulumi.Input.mapOptionalInputValue<SBOMStatusSbomState, String>(sbomState, (value) => value.wireValue),
    };
  }

  factory SBOMStatus.fromMap(Map<String, dynamic> map) {
    return SBOMStatus(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sbomState: (() { final guardedValue = map['sbomState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SBOMStatusSbomState.fromValue(guardedValue as String)); })(),
    );
  }
}
