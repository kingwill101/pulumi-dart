// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_target_config.dart';
import 'deployment_target_import.dart';

class DeploymentTarget {
  /// The root configuration file to use for this deployment.
  /// Structure is documented below.
  final pulumi.Input<DeploymentTargetConfig> config;
  /// Specifies import files for this configuration. This can be
  /// used to import templates or other files. For example, you might
  /// import a text file in order to use the file in a template.
  /// Structure is documented below.
  final pulumi.Input<List<DeploymentTargetImport>?>? imports;

  /// Creates a new [DeploymentTarget].
  /// [config] The root configuration file to use for this deployment.
  /// [imports] Specifies import files for this configuration. This can be
  const DeploymentTarget({
    required this.config,
    this.imports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<DeploymentTargetConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'imports': ?pulumi.Input.mapOptionalInputValue<List<DeploymentTargetImport>, List<Map<String, dynamic>>>(imports, (value) => pulumi.Input.encodeList<DeploymentTargetImport, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeploymentTarget.fromMap(Map<String, dynamic> map) {
    return DeploymentTarget(
      config: pulumi.Input.fromValue(DeploymentTargetConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      imports: (() { final guardedValue = map['imports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentTargetImport>(guardedValue, (value) => DeploymentTargetImport.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
