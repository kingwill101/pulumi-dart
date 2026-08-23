// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_output.dart';

/// Details about the work the de-identify operation performed.
class DeidentifyOperationMetadata {
  /// Details about the FHIR store to write the output to.
  final pulumi.Input<FhirOutput>? fhirOutput;

  /// Creates a new [DeidentifyOperationMetadata].
  /// [fhirOutput] Details about the FHIR store to write the output to.
  const DeidentifyOperationMetadata({
    this.fhirOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fhirOutput': ?pulumi.Input.mapOptionalInputValue<FhirOutput, Map<String, dynamic>>(fhirOutput, (value) => value.toMap()),
    };
  }

  factory DeidentifyOperationMetadata.fromMap(Map<String, dynamic> map) {
    return DeidentifyOperationMetadata(
      fhirOutput: (() { final guardedValue = map['fhirOutput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FhirOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
