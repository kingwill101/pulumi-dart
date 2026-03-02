// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_builder.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_invocation.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_material.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_metadata.dart';

/// SlsaProvenanceZeroTwo is the slsa provenance as defined by the slsa spec. See full explanation of fields at slsa.dev/provenance/v0.2.
class SlsaProvenanceZeroTwoContaineranalysisV1alpha1 {
  /// Lists the steps in the build.
  final pulumi.Input<Map<String, String>>? buildConfig;
  /// URI indicating what type of build was performed.
  final pulumi.Input<String>? buildType;
  /// Identifies the entity that executed the recipe, which is trusted to have correctly performed the operation and populated this provenance.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder>? builder;
  /// Identifies the event that kicked off the build.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation>? invocation;
  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.
  final pulumi.Input<List<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial>>? materials;
  /// Other properties of the build.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata>? metadata;

  /// Creates a new [SlsaProvenanceZeroTwoContaineranalysisV1alpha1].
  /// [buildConfig] Lists the steps in the build.
  /// [buildType] URI indicating what type of build was performed.
  /// [builder] Identifies the entity that executed the recipe, which is trusted to have correctly performed the operation and populated this provenance.
  /// [invocation] Identifies the event that kicked off the build.
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.
  /// [metadata] Other properties of the build.
  SlsaProvenanceZeroTwoContaineranalysisV1alpha1({
    this.buildConfig,
    this.buildType,
    this.builder,
    this.invocation,
    this.materials,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig': ?buildConfig,
      'buildType': ?buildType,
      'builder': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder, Map<String, dynamic>>(builder, (value) => value.toMap()),
      'invocation': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation, Map<String, dynamic>>(invocation, (value) => value.toMap()),
      'materials': ?pulumi.Input.mapOptionalInputValue<List<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial>, List<Map<String, dynamic>>>(materials, (value) => pulumi.Input.encodeList<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory SlsaProvenanceZeroTwoContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceZeroTwoContaineranalysisV1alpha1(
      buildConfig: map['buildConfig'] == null ? null : ((map['buildConfig']! as Map).cast<String, String>()).input(),
      buildType: map['buildType'] == null ? null : (map['buildType']! as String).input(),
      builder: map['builder'] == null ? null : (GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder.fromMap((map['builder']! as Map).cast<String, dynamic>())).input(),
      invocation: map['invocation'] == null ? null : (GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation.fromMap((map['invocation']! as Map).cast<String, dynamic>())).input(),
      materials: map['materials'] == null ? null : (pulumi.Input.decodeList<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial>(map['materials']!, (value) => GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metadata: map['metadata'] == null ? null : (GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

