// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_config_source.dart';

/// Identifies the event that kicked off the build.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation {
  /// Describes where the config file that kicked off the build came from.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource>? configSource;
  /// Any other builder-controlled inputs necessary for correctly evaluating the build.
  final pulumi.Input<Map<String, String>>? environment;
  /// Collection of all external inputs that influenced the build on top of invocation.configSource.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation].
  /// [configSource] Describes where the config file that kicked off the build came from.
  /// [environment] Any other builder-controlled inputs necessary for correctly evaluating the build.
  /// [parameters] Collection of all external inputs that influenced the build on top of invocation.configSource.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation({
    this.configSource,
    this.environment,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configSource': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource, Map<String, dynamic>>(configSource, (value) => value.toMap()),
      'environment': ?environment,
      'parameters': ?parameters,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation(
      configSource: map['configSource'] == null ? null : (GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource.fromMap((map['configSource'] as Map).cast<String, dynamic>())).input(),
      environment: map['environment'] == null ? null : ((map['environment'] as Map).cast<String, String>()).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
    );
  }
}

