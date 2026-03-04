// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_output_response.dart';

/// Details about the work the de-identify operation performed.
class DeidentifyOperationMetadataResponse {
  /// Details about the FHIR store to write the output to.
  final pulumi.Input<FhirOutputResponse> fhirOutput;

  /// Creates a new [DeidentifyOperationMetadataResponse].
  /// [fhirOutput] Details about the FHIR store to write the output to.
  DeidentifyOperationMetadataResponse({required this.fhirOutput});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fhirOutput':
          pulumi.Input.mapInputValue<FhirOutputResponse, Map<String, dynamic>>(
            fhirOutput,
            (value) => value.toMap(),
          ),
    };
  }

  factory DeidentifyOperationMetadataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeidentifyOperationMetadataResponse(
      fhirOutput: pulumi.Input.fromValue(
        FhirOutputResponse.fromMap(
          (map['fhirOutput']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
