// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_definition_containeranalysis_v1alpha1.dart';
import 'run_details_containeranalysis_v1alpha1.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1ContaineranalysisV1alpha1 {
  final pulumi.Input<BuildDefinitionContaineranalysisV1alpha1>? buildDefinition;
  final pulumi.Input<RunDetailsContaineranalysisV1alpha1>? runDetails;

  /// Creates a new [SlsaProvenanceV1ContaineranalysisV1alpha1].
  /// [buildDefinition] Optional.
  /// [runDetails] Optional.
  SlsaProvenanceV1ContaineranalysisV1alpha1({
    this.buildDefinition,
    this.runDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildDefinition': ?pulumi.Input.mapOptionalInputValue<BuildDefinitionContaineranalysisV1alpha1, Map<String, dynamic>>(buildDefinition, (value) => value.toMap()),
      'runDetails': ?pulumi.Input.mapOptionalInputValue<RunDetailsContaineranalysisV1alpha1, Map<String, dynamic>>(runDetails, (value) => value.toMap()),
    };
  }

  factory SlsaProvenanceV1ContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceV1ContaineranalysisV1alpha1(
      buildDefinition: map['buildDefinition'] == null ? null : (BuildDefinitionContaineranalysisV1alpha1.fromMap((map['buildDefinition'] as Map).cast<String, dynamic>())).input(),
      runDetails: map['runDetails'] == null ? null : (RunDetailsContaineranalysisV1alpha1.fromMap((map['runDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

