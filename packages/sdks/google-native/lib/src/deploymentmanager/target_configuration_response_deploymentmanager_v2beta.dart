// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_file_response_deploymentmanager_v2beta.dart';
import 'import_file_response_deploymentmanager_v2beta.dart';

class TargetConfigurationResponseDeploymentmanagerV2beta {
  /// The configuration to use for this deployment.
  final pulumi.Input<ConfigFileResponseDeploymentmanagerV2beta> config;
  /// Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  final pulumi.Input<List<ImportFileResponseDeploymentmanagerV2beta>> imports;

  /// Creates a new [TargetConfigurationResponseDeploymentmanagerV2beta].
  /// [config] The configuration to use for this deployment.
  /// [imports] Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  const TargetConfigurationResponseDeploymentmanagerV2beta({
    required this.config,
    required this.imports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<ConfigFileResponseDeploymentmanagerV2beta, Map<String, dynamic>>(config, (value) => value.toMap()),
      'imports': pulumi.Input.mapInputValue<List<ImportFileResponseDeploymentmanagerV2beta>, List<Map<String, dynamic>>>(imports, (value) => pulumi.Input.encodeList<ImportFileResponseDeploymentmanagerV2beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TargetConfigurationResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return TargetConfigurationResponseDeploymentmanagerV2beta(
      config: pulumi.Input.fromValue(ConfigFileResponseDeploymentmanagerV2beta.fromMap((map['config']! as Map).cast<String, dynamic>())),
      imports: pulumi.Input.fromValue(pulumi.Input.decodeList<ImportFileResponseDeploymentmanagerV2beta>(map['imports']!, (value) => ImportFileResponseDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

