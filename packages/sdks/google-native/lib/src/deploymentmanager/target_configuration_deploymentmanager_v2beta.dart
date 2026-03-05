// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_file_deploymentmanager_v2beta.dart';
import 'import_file_deploymentmanager_v2beta.dart';

class TargetConfigurationDeploymentmanagerV2beta {
  /// The configuration to use for this deployment.
  final pulumi.Input<ConfigFileDeploymentmanagerV2beta>? config;
  /// Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  final pulumi.Input<List<ImportFileDeploymentmanagerV2beta>>? imports;

  /// Creates a new [TargetConfigurationDeploymentmanagerV2beta].
  /// [config] The configuration to use for this deployment.
  /// [imports] Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  TargetConfigurationDeploymentmanagerV2beta({
    this.config,
    this.imports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<ConfigFileDeploymentmanagerV2beta, Map<String, dynamic>>(config, (value) => value.toMap()),
      'imports': ?pulumi.Input.mapOptionalInputValue<List<ImportFileDeploymentmanagerV2beta>, List<Map<String, dynamic>>>(imports, (value) => pulumi.Input.encodeList<ImportFileDeploymentmanagerV2beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TargetConfigurationDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return TargetConfigurationDeploymentmanagerV2beta(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigFileDeploymentmanagerV2beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imports: (() { final guardedValue = map['imports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportFileDeploymentmanagerV2beta>(guardedValue, (value) => ImportFileDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

