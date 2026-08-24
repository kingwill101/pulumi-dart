// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_projects_result_canonical_deployment_source_config.dart';

class GetPagesProjectsResultCanonicalDeploymentSource {
  final pulumi.Input<GetPagesProjectsResultCanonicalDeploymentSourceConfig> config;
  /// The source control management provider.
  /// Available values: "github", "gitlab".
  final pulumi.Input<String> type;

  /// Creates a new [GetPagesProjectsResultCanonicalDeploymentSource].
  /// [config] Required.
  /// [type] The source control management provider.
  const GetPagesProjectsResultCanonicalDeploymentSource({
    required this.config,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GetPagesProjectsResultCanonicalDeploymentSourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetPagesProjectsResultCanonicalDeploymentSource.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultCanonicalDeploymentSource(
      config: pulumi.Input.fromValue(GetPagesProjectsResultCanonicalDeploymentSourceConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
