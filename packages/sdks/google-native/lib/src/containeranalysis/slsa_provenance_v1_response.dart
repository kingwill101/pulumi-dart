// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_definition_response.dart';
import 'run_details_response.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1Response {
  final pulumi.Input<BuildDefinitionResponse> buildDefinition;
  final pulumi.Input<RunDetailsResponse> runDetails;

  /// Creates a new [SlsaProvenanceV1Response].
  /// [buildDefinition] Required.
  /// [runDetails] Required.
  SlsaProvenanceV1Response({
    required this.buildDefinition,
    required this.runDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildDefinition': pulumi.Input.mapInputValue<BuildDefinitionResponse, Map<String, dynamic>>(buildDefinition, (value) => value.toMap()),
      'runDetails': pulumi.Input.mapInputValue<RunDetailsResponse, Map<String, dynamic>>(runDetails, (value) => value.toMap()),
    };
  }

  factory SlsaProvenanceV1Response.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceV1Response(
      buildDefinition: pulumi.Input.fromValue(BuildDefinitionResponse.fromMap((map['buildDefinition']! as Map).cast<String, dynamic>())),
      runDetails: pulumi.Input.fromValue(RunDetailsResponse.fromMap((map['runDetails']! as Map).cast<String, dynamic>())),
    );
  }
}

