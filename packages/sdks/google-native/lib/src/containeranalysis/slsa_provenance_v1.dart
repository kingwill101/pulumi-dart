// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_definition.dart';
import 'run_details.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1 {
  final pulumi.Input<BuildDefinition>? buildDefinition;
  final pulumi.Input<RunDetails>? runDetails;

  /// Creates a new [SlsaProvenanceV1].
  /// [buildDefinition] Optional.
  /// [runDetails] Optional.
  SlsaProvenanceV1({
    this.buildDefinition,
    this.runDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildDefinition': ?pulumi.Input.mapOptionalInputValue<BuildDefinition, Map<String, dynamic>>(buildDefinition, (value) => value.toMap()),
      'runDetails': ?pulumi.Input.mapOptionalInputValue<RunDetails, Map<String, dynamic>>(runDetails, (value) => value.toMap()),
    };
  }

  factory SlsaProvenanceV1.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceV1(
      buildDefinition: map['buildDefinition'] == null ? null : (BuildDefinition.fromMap((map['buildDefinition']! as Map).cast<String, dynamic>())).input(),
      runDetails: map['runDetails'] == null ? null : (RunDetails.fromMap((map['runDetails']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

