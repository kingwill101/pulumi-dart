// ignore_for_file: unused_element, unnecessary_cast

import 'fhir_output_response.dart';

/// Details about the work the de-identify operation performed.
class DeidentifyOperationMetadataResponse {
  /// Details about the FHIR store to write the output to.
  final FhirOutputResponse fhirOutput;

  /// Creates a new [DeidentifyOperationMetadataResponse].
  /// [fhirOutput] Details about the FHIR store to write the output to.
  DeidentifyOperationMetadataResponse({
    required this.fhirOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fhirOutput': fhirOutput.toMap(),
    };
  }

  factory DeidentifyOperationMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DeidentifyOperationMetadataResponse(
      fhirOutput: FhirOutputResponse.fromMap((map['fhirOutput'] as Map).cast<String, dynamic>()),
    );
  }
}

