// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_definition_response_containeranalysis_v1alpha1.dart';
import 'run_details_response_containeranalysis_v1alpha1.dart';

/// Keep in sync with schema at https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1ResponseContaineranalysisV1alpha1 {
  final pulumi.Input<BuildDefinitionResponseContaineranalysisV1alpha1>
  buildDefinition;
  final pulumi.Input<RunDetailsResponseContaineranalysisV1alpha1> runDetails;

  /// Creates a new [SlsaProvenanceV1ResponseContaineranalysisV1alpha1].
  /// [buildDefinition] Required.
  /// [runDetails] Required.
  SlsaProvenanceV1ResponseContaineranalysisV1alpha1({
    required this.buildDefinition,
    required this.runDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildDefinition':
          pulumi.Input.mapInputValue<
            BuildDefinitionResponseContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(buildDefinition, (value) => value.toMap()),
      'runDetails':
          pulumi.Input.mapInputValue<
            RunDetailsResponseContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(runDetails, (value) => value.toMap()),
    };
  }

  factory SlsaProvenanceV1ResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SlsaProvenanceV1ResponseContaineranalysisV1alpha1(
      buildDefinition: pulumi.Input.fromValue(
        BuildDefinitionResponseContaineranalysisV1alpha1.fromMap(
          (map['buildDefinition']! as Map).cast<String, dynamic>(),
        ),
      ),
      runDetails: pulumi.Input.fromValue(
        RunDetailsResponseContaineranalysisV1alpha1.fromMap(
          (map['runDetails']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
