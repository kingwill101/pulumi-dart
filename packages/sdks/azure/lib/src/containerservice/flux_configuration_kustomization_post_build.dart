// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flux_configuration_kustomization_post_build_substitute_from.dart';

class FluxConfigurationKustomizationPostBuild {
  /// Specifies the key/value pairs holding the variables to be substituted in this Kustomization.
  final Map<String, String>? substitute;
  /// A `substitute_from` block as defined below.
  final List<FluxConfigurationKustomizationPostBuildSubstituteFrom>? substituteFroms;

  /// Creates a new [FluxConfigurationKustomizationPostBuild].
  /// [substitute] Specifies the key/value pairs holding the variables to be substituted in this Kustomization.
  /// [substituteFroms] A `substitute_from` block as defined below.
  FluxConfigurationKustomizationPostBuild({
    this.substitute,
    this.substituteFroms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'substitute': ?substitute,
      'substituteFroms': ?substituteFroms == null ? null : pulumi.Input.encodeList<FluxConfigurationKustomizationPostBuildSubstituteFrom, Map<String, dynamic>>(substituteFroms!, (value) => value.toMap()),
    };
  }

  factory FluxConfigurationKustomizationPostBuild.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationKustomizationPostBuild(
      substitute: map['substitute'] == null ? null : (map['substitute'] as Map).cast<String, String>(),
      substituteFroms: map['substituteFroms'] == null ? null : pulumi.Input.decodeList<FluxConfigurationKustomizationPostBuildSubstituteFrom>(map['substituteFroms'], (value) => FluxConfigurationKustomizationPostBuildSubstituteFrom.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

