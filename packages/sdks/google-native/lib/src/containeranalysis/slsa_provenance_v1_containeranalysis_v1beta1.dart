// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_definition_containeranalysis_v1beta1.dart';
import 'run_details_containeranalysis_v1beta1.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1ContaineranalysisV1beta1 {
  final pulumi.Input<BuildDefinitionContaineranalysisV1beta1>? buildDefinition;
  final pulumi.Input<RunDetailsContaineranalysisV1beta1>? runDetails;

  /// Creates a new [SlsaProvenanceV1ContaineranalysisV1beta1].
  /// [buildDefinition] Optional.
  /// [runDetails] Optional.
  SlsaProvenanceV1ContaineranalysisV1beta1({
    this.buildDefinition,
    this.runDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildDefinition': ?pulumi.Input.mapOptionalInputValue<BuildDefinitionContaineranalysisV1beta1, Map<String, dynamic>>(buildDefinition, (value) => value.toMap()),
      'runDetails': ?pulumi.Input.mapOptionalInputValue<RunDetailsContaineranalysisV1beta1, Map<String, dynamic>>(runDetails, (value) => value.toMap()),
    };
  }

  factory SlsaProvenanceV1ContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceV1ContaineranalysisV1beta1(
      buildDefinition: (() { final guardedValue = map['buildDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildDefinitionContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runDetails: (() { final guardedValue = map['runDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RunDetailsContaineranalysisV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

