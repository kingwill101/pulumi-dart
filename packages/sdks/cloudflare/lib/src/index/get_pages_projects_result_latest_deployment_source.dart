// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_projects_result_latest_deployment_source_config.dart';

class GetPagesProjectsResultLatestDeploymentSource {
  final pulumi.Input<GetPagesProjectsResultLatestDeploymentSourceConfig> config;
  /// The source control management provider.
  /// Available values: "github", "gitlab".
  final pulumi.Input<String> type;

  /// Creates a new [GetPagesProjectsResultLatestDeploymentSource].
  /// [config] Required.
  /// [type] The source control management provider.
  const GetPagesProjectsResultLatestDeploymentSource({
    required this.config,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GetPagesProjectsResultLatestDeploymentSourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetPagesProjectsResultLatestDeploymentSource.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultLatestDeploymentSource(
      config: pulumi.Input.fromValue(GetPagesProjectsResultLatestDeploymentSourceConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
