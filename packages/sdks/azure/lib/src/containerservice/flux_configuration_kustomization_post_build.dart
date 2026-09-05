// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flux_configuration_kustomization_post_build_substitute_from.dart';

class FluxConfigurationKustomizationPostBuild {
  /// Specifies the key/value pairs holding the variables to be substituted in this Kustomization.
  final pulumi.Input<Map<String, String>?>? substitute;
  /// A `substituteFrom` block as defined below.
  final pulumi.Input<List<FluxConfigurationKustomizationPostBuildSubstituteFrom>?>? substituteFroms;

  /// Creates a new [FluxConfigurationKustomizationPostBuild].
  /// [substitute] Specifies the key/value pairs holding the variables to be substituted in this Kustomization.
  /// [substituteFroms] A `substituteFrom` block as defined below.
  const FluxConfigurationKustomizationPostBuild({
    this.substitute,
    this.substituteFroms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'substitute': ?substitute,
      'substituteFroms': ?pulumi.Input.mapOptionalInputValue<List<FluxConfigurationKustomizationPostBuildSubstituteFrom>, List<Map<String, dynamic>>>(substituteFroms, (value) => pulumi.Input.encodeList<FluxConfigurationKustomizationPostBuildSubstituteFrom, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FluxConfigurationKustomizationPostBuild.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationKustomizationPostBuild(
      substitute: (() { final guardedValue = map['substitute']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      substituteFroms: (() { final guardedValue = map['substituteFroms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FluxConfigurationKustomizationPostBuildSubstituteFrom>(guardedValue, (value) => FluxConfigurationKustomizationPostBuildSubstituteFrom.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
